//
// Created by os on 8/6/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "../h/MemoryAllocator.hpp"

class TCB;

class Scheduler {

public:

    static uint64 numOfThreads;

    static void put(TCB* thr);
    
    static TCB* get();


private:

    struct Elem {

        TCB* thr;
        Elem* next;
        explicit Elem(TCB* thr) : thr(thr), next(nullptr){}

        void* operator new(size_t sz){

            sz = MemoryAllocator::allocateBytes(sz);

            return MemoryAllocator::kmalloc(sz);
        }

        void operator delete(void* ptr){
            
            MemoryAllocator::kfree(ptr);
            
        }

    };

    static Elem* head, *tail;

};

#endif //PROJECT_BASE_SCHEDULER_HPP
