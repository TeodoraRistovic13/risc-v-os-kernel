//
// Created by os on 8/13/22.
//

#include "../h/kSemaphore.hpp"


kSemaphore* kSemaphore::createSemaphore(signed init) {

    return new kSemaphore(init);
}

int kSemaphore::wait(){

    if (opened){
        if(--val < 0) {
            block();
            return 3;
        }
        return 0;
    }
    return 1;
}

int kSemaphore::signal(){

    if (opened){
        if(++val <= 0) {
            unblock();
            return 3;
        }
        return 0;

    }
    return 1;

};

void kSemaphore::block(){

    TCB* old = TCB::running;
    old->setBlocked(true);
    numOfBlocked++;
    blocked.addLast(old);
    TCB::dispatch();
}

void kSemaphore::unblock(){

    TCB* thr = blocked.removeFirst();
    thr->setBlocked(false);
    numOfBlocked = (numOfBlocked - 1 <= 0 )? 0: numOfBlocked - 1 ;
    Scheduler::put(thr);
}

void* kSemaphore::operator new (size_t n){

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
}


void kSemaphore::operator delete (void* p) noexcept{

    MemoryAllocator::kfree(p);
    
}
