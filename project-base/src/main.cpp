//
// Created by os on 8/1/22.
//

#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/riscv.hpp"
#include "../h/setup.hpp"
#include "../h/TCB.hpp"
//#include "../h/printing.hpp"
#include "../h/kConsole.hpp"
#include "../h/printing.hpp"


extern "C" {

    uint64* kernelStack;

}

void idle(){

    if (Scheduler::numOfThreads == 2 && TCB::numActiveThreads > 3){
        while(1){}
    }else{
        TCB::yield();
    }
}

void userMain();

int main(){

    heapSetup();
    //STEK
    uint64 stackSize = (DEFAULT_STACK_SIZE * 8 - 1)/MEM_BLOCK_SIZE + 1;

    kernelStack = (uint64*)MemoryAllocator::kmalloc(stackSize); //STEK PREKIDNE RUTINE
    kernelStack = (uint64*) &kernelStack[DEFAULT_STACK_SIZE - 1];

    uint64* kThreadStack = (uint64*)MemoryAllocator::kmalloc(stackSize); // STEK POSEBNE KERNEL NITI
    kThreadStack = (uint64*) &kThreadStack[DEFAULT_STACK_SIZE - 1];

    uint64  sepc = (uint64)&supervisorTrap;
    asm volatile ("csrw stvec, %0" : :"r" (sepc));
    sepc = 0x202UL;
    asm volatile ("csrw sie, %0" : :"r" (sepc));
    TCB* startThread = TCB::createThread(nullptr);

    TCB* kernelThread = TCB::createThread(nullptr);
    kernelThread->setKernelFlag(true); //razmisli dal je ok da koristi kernel stek
    kernelThread->savedRegs[1] = (uint64)TCB::kernelWrapper; //upisujem adresu fje
    kernelThread->savedRegs[2] = (uint64) kThreadStack;
    kernelThread->userStack = kThreadStack;

    TCB::kernelThread = kernelThread; //ne stavljam sad nego kad se desi prekid; ona je spremna

    TCB::createThread(userMain);

    //TCB* idleThread = TCB::createThread(idle); //VRATI IDLE NIT --->idleThread
    TCB::createThread(idle); //VRATI IDLE NIT --->idleThread
    Scheduler::put(kernelThread);
    TCB::running = startThread;

    while(TCB::numActiveThreads >= 4){
        TCB::yield();
    };

    return 0;

}


