//
// Created by os on 8/6/22.
//

#include "../h/TCB.hpp"
#include "../h/riscv.hpp"
#include "../h/printing.hpp"
#include "../h/kConsole.hpp"
#include "../h/list.hpp"

TCB* TCB::running = nullptr;

TCB* TCB::kernelThread = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB::SleepNode* TCB::sleepHead = nullptr;

uint64 TCB::numActiveThreads = 0;

void TCB::sleepThread(time_t waitTime){

    if(waitTime == 0) return;

    SleepNode* temp = (SleepNode*) MemoryAllocator::kmalloc (MemoryAllocator::allocateBytes(sizeof(SleepNode)));
    temp->thr = TCB::running;
    temp->relSleepTime = waitTime;
    temp->next = nullptr;

    TCB::running->setAsleep(true);

    if (TCB::sleepHead == nullptr)
    {
        TCB::sleepHead = temp;
        return;
    }

    SleepNode* curr = TCB::sleepHead, *prev = nullptr;

    while(curr != nullptr && temp->relSleepTime > curr->relSleepTime){
        prev = curr;
        temp->relSleepTime -= curr->relSleepTime;
        curr = curr->next;
    }

    if (curr == nullptr){
        prev->next = temp;
        return;
    }
    if(prev == nullptr){

        TCB::sleepHead->relSleepTime -= temp->relSleepTime;
        temp->next = TCB::sleepHead;
        TCB::sleepHead = temp;
        return;
    }

    prev->next = temp;
    temp->next = curr;
    curr->relSleepTime -= temp->relSleepTime;

}; //uspavljivanje niti odnosno dodavanje u red uspavanih

void TCB::wakeThread(){

    //if(TCB::sleepHead > 0) TCB::sleepHead->relSleepTime--;
    TCB::sleepHead->relSleepTime--;

    while(TCB::sleepHead != nullptr && TCB::sleepHead->relSleepTime == 0){

        SleepNode* temp = TCB::sleepHead;
        TCB::sleepHead = TCB::sleepHead->next;

        temp->thr->setAsleep(false);//budimo je
        Scheduler::put(temp->thr);
    }

}; //probuditi nit; staviti je u Scheduler

TCB* TCB::createThread(Body body){

    return new TCB(body, DEFAULT_TIME_SLICE);

}

void TCB::yield(){

    register uint64 code asm("a0") = 0x13;
    //mislim da je dovoljan samo sistemski poziv ; nece se prepoznati u switchu ali ce se svakako izvrsiti dispatch()
    asm volatile ("ecall" :: "r"(code): "memory");

}

void TCB::dispatch(){

    TCB* old = TCB::running;
    if(old->isFinished()) TCB::numActiveThreads--;
    if(!old->isFinished() && !old->isBlocked() && !old->isAsleep()) Scheduler::put(old);

    TCB::running = Scheduler::get();

    contextSwitch(old->savedRegs, running->savedRegs);

    if (TCB::running->isKernelThread()){
        contextSwitch((uint64*)kernelWrapper);
    }
    if(old->isFinished()){
        MemoryAllocator::kfree(old->userStack);
        MemoryAllocator::kfree(old->savedRegs);
        MemoryAllocator::kfree(old);
    }

}

void TCB::kernelWrapper(){

    asm("mv t1, %0"::"r"(TCB::running->userStack));
    asm("mv sp, t1"); //uvek ista vrednost
    //asm("ld sp, 2*8(t1)"); //uvek ista vrednost
    //pozove kernel fju za obradu prekida
    kConsole::sendChars(); //zavrsamo kad je bit spemnosti 0 ili kada u baferu nema vise podataka(sve poslali)
    TCB::yield(); //vracamo kontekst nekoj drugoj niti; vrlo je bitno da U PR stalno postavljam ra za kernelThreadWrapper

};

void TCB::threadWrapper(){

    asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    asm("ld a0, 12*8(t1)"); //ovo bi trebalo da je argument ali;
    asm("ld sp, 2*8(t1)");

    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

void* TCB::operator new (size_t n){

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
}

void* TCB::operator new[] (size_t n){

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);

}

void TCB::operator delete (void* p) noexcept{

    MemoryAllocator::kfree(p);

}

void TCB::operator delete[] (void* p) noexcept{

    MemoryAllocator::kfree(p);

}

void TCB::kernelContextSwitch(){
    // u PCB trenutne niti upisujemo registre
    asm("mv t1, %0"::"r"(TCB::running->savedRegs));

}
