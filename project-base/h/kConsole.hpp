//
// Created by os on 8/18/22.
//

#ifndef PROJECT_BASE_KCONSOLE_HPP
#define PROJECT_BASE_KCONSOLE_HPP

#include "../h/kSemaphore.hpp"
#include "../lib/hw.h"

class kConsole{

public:

    static void sendChars(); // fja koju izvrsava interna kernel nit;
    
    static void receiveChars();

    static kConsole* createConsole(){ return new kConsole(); }

    static int putOB(char c);

    static char getIB();

    static bool received;

    static int capacity;

    static char outputBuffer[1000];

    static int headOB, tailOB;

    static char inputBuffer[1000];

    static int headIB, tailIB;

    struct Node {

        TCB* thr;

        Node* next;

        explicit Node(TCB* thr) : thr(thr), next(nullptr){}

        void* operator new(size_t sz){

            sz = MemoryAllocator::allocateBytes(sz);

            return MemoryAllocator::kmalloc(sz);
        }

        void operator delete(void* ptr){
            
            MemoryAllocator::kfree(ptr);

        }

    };

    static void addLast(TCB* thr);

    static TCB* removeFirst();

    static Node* head, *tail;

};

#endif //PROJECT_BASE_KCONSOLE_HPP
