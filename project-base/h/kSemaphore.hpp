//
// Created by os on 8/13/22.
//

#ifndef PROJECT_BASE_KSEMAPHORE_HPP
#define PROJECT_BASE_KSEMAPHORE_HPP

#include "list.hpp"
#include "TCB.hpp"

class kSemaphore {

public:

    static kSemaphore* createSemaphore(signed init);

    int wait();

    int signal();

    signed value() const { return val; }

    bool isOpen() const { return opened; }

    void setOpen( bool state ){ opened = state; }

    bool isBusy() const { return  numOfBlocked > 0; }

    void* operator new (size_t n);

    void operator delete (void* p) noexcept ;

    friend class Riscv;


protected:

    void block();

    void unblock();

private:

    kSemaphore(signed init = 1){ val = init; opened = true; numOfBlocked = 0; };

    signed val;

    bool opened;

    List<TCB> blocked;
    
    int numOfBlocked;

};



#endif //PROJECT_BASE_KSEMAPHORE_HPP
