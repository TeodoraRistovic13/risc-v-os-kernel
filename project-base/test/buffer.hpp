//
// Created by zika on 2/26/22.
//

#ifndef OS1_BUFFER_CPP_H
#define OS1_BUFFER_CPP_H

#include "../h/syscall_c.h"
#include "../h/printing.hpp"
#include "../lib/console.h"



class Buffer {
private:
    int cap;
    int *buffer;
    int head, tail;

    sem_t spaceAvailable;
    sem_t itemAvailable;
    sem_t mutexHead;
    sem_t mutexTail;

public:
    Buffer(int _cap);
    ~Buffer();

    void put(int val);
    int get();

    int getCnt();

    void* operator new (size_t n);
    void* operator new[] (size_t n);

    void operator delete (void* p) noexcept ;
    void operator delete[] (void* p) noexcept;

};


#endif //OS1_BUFFER_CPP_H

