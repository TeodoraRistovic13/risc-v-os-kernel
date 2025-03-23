//
// Created by os on 8/12/22.
//

#ifndef PROJECT_BASE_SYSCALL_CPP_HPP
#define PROJECT_BASE_SYSCALL_CPP_HPP

#include "syscall_c.h"

class Thread {
public:

    Thread (void (*body)(void*), void* arg);

    virtual ~Thread (){};

    int start ();

    static void dispatch ();

    static void wrapper(void* t);

    static int sleep (time_t);

    void* operator new (size_t size);

    void operator delete (void* addr) noexcept;

protected:

    Thread () : myHandle(nullptr){};

    virtual void run () {}
    
private:

    thread_t myHandle;
    
};

class PeriodicThread : public Thread {

protected:

    PeriodicThread (time_t period);

    virtual void periodicActivation () {}

    void run();

private:

    time_t period;

};

class Semaphore {
public:

    Semaphore (signed init = 1);

    virtual ~Semaphore (){};

    int wait ();

    int signal ();

    void* operator new (size_t size);

    void operator delete (void* addr) noexcept;

private:
    sem_t myHandle;
};

class Console {

public:

    static char getc ();

    static void putc (char);
};

#endif //PROJECT_BASE_SYSCALL_CPP_HPP
