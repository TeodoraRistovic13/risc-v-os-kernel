//
// Created by os on 8/6/22.
//
#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.h"

class TCB {

public:

    bool isFinished() const { return finished; }

    bool isBlocked() const { return blocked; }

    bool isAsleep() const { return asleep; }

    bool isKernelThread() const { return kernelThreadFlag; }

    bool isWaitingForInput() const { return waitingForInput; }

    void setFinished(bool value) { finished = value; }

    void setBlocked(bool value) { blocked = value; }

    void setAsleep(bool value) { asleep = value; }

    void setKernelFlag(bool value) { kernelThreadFlag = value; }

    void setWaitingForInput(bool value) { waitingForInput = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void(*)();

    static TCB* createThread(Body body);

    static TCB* running;

    static TCB* kernelThread;

    static uint64 numActiveThreads; //vidi dal radi

    static void sleepThread(time_t); //uspavljivanje niti odnosno dodavanje u red uspavanih

    static void wakeThread(); //probuditi nit; staviti je u Scheduler

    static uint64 timeSliceCounter;

    static void yield();

    static void contextSwitch(uint64* addr);

    static void contextSwitch(uint64* oldSavedRegs , uint64* newSavedRegs);

    static void  kernelContextSwitch();

    struct SleepNode {

        TCB* thr;

        time_t relSleepTime;

        SleepNode* next;

        void* operator new (size_t n){

            n = MemoryAllocator::allocateBytes(n);

            return MemoryAllocator::kmalloc(n);
        };

        void operator delete (void* p) noexcept {

            MemoryAllocator::kfree(p);
            
        };


    };

    static SleepNode* sleepHead;

private:

    TCB(Body body, uint64 timeSlice)
    {
        this->body = body;

        static uint64 stackSize = (DEFAULT_STACK_SIZE * 8 - 1)/MEM_BLOCK_SIZE + 1;
        this->userStack = (body != nullptr ? (uint64*)MemoryAllocator::kmalloc(stackSize) : nullptr); //userStek

        uint64 n = (sizeof(uint64)* 32 - 1)/MEM_BLOCK_SIZE + 1;
        this->savedRegs = (uint64*)MemoryAllocator::kmalloc(n);
        if (body != nullptr ){
            this->savedRegs[1] = (uint64)threadWrapper; //upisujem threadWrapper u ra = x1
            this->savedRegs[2] = (uint64) &this->userStack[DEFAULT_STACK_SIZE - 1];

        }

        this->finished = false;
        this->blocked = false;
        this->asleep = false;
        //this->notUnblockedRegularly = false;
        this->kernelThreadFlag = false; // po defualt nit je korisnicka
        this->waitingForInput = false;

        if ( body != nullptr) {
            Scheduler::put(this);
        }
        this->sepc = 0;
        this->sstatus = 0;
        this->timeSlice = timeSlice;

        TCB::numActiveThreads++;
    }

    Body body;

    uint64* userStack;

    uint64* savedRegs; //registers

    uint64 sepc;

    uint64 sstatus;

    uint64 timeSlice;

    bool finished;

    bool blocked;

    bool asleep;

    bool kernelThreadFlag;

    bool waitingForInput;

    friend class Riscv;

    friend class kSemaphore;

    friend int main();

    friend uint64 syscall_handler(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3);

    static void threadWrapper();

    static void kernelWrapper();

    static void dispatch();

    void* operator new (size_t n);

    void* operator new[] (size_t n);

    void operator delete (void* p) noexcept ;

    void operator delete[] (void* p) noexcept;

};

#endif //PROJECT_BASE_TCB_HPP
