//
// Created by os on 8/4/22.
//

#include "../h/syscall_c.h"
#include "../h/riscv.hpp"
#include "../h/kConsole.hpp"

void* mem_alloc (size_t size){

    //upisem prvi argument u reg a1 zato sto su registri od a1 do a7 za argumente syscalla
    //prosledjujem tacan br blokova
    size += sizeof(sizeof(size_t)); // povecavam velicinu za sizeof(HiddenHeader)

    register uint64 a1 asm ("a1") = (size - 1)/MEM_BLOCK_SIZE + 1;// zaokruzujemo na tacan br blokova velicine MEM_BLK_SIZE

    register uint64 a0 asm ("a0") = 0x01; // kod za mem_alloc

    register void* ptr asm ("a0");

    asm volatile ("ecall" : "=r"(ptr) : "r"(a0), "r"(a1): "memory");

    return ptr;
};

int mem_free(void* addr){

    register void* a1 asm ("a1") = addr;

    register uint64 a0 asm ("a0") = 0x02; // kod za mem_free

    register int res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");

    return res;
}

typedef void(*function)(void*);
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){

    *handle = nullptr;

    register function a1 asm ("a1") = start_routine; //prvi argument

    register void* a2 asm ("a2") = arg; //drugi argument

    register thread_t* a3 asm ("a3") = handle;

    register uint64 a0 asm("a0") = 0x11; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(a0) : "r"(a0), "r"(a1), "r"(a2), "r"(a3): "memory");

    return res;
};

//kod je 12
int thread_exit(){

    register uint64 a0 asm("a0") = 0x12; //kod

    asm volatile ("ecall" :: "r"(a0): "memory");

    return 0;
}

void thread_dispatch (){

    register uint64 a0 asm("a0") = 0x13;

    asm volatile ("ecall" :: "r"(a0) : "memory");
};



int sem_open (sem_t* handle, unsigned init){

    *handle = nullptr;

    register sem_t* a1 asm ("a1") = handle; //prvi argument

    register unsigned a2 asm ("a2") = init; //drugi argument

    register uint64 a0 asm("a0") = 0x21; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1), "r"(a2): "memory");

    return res;
};

int sem_close (sem_t handle){

    register sem_t a1 asm ("a1") = handle; //prvi argument

    register uint64 a0 asm("a0") = 0x22; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");

    return res;
}; //0x22

int sem_wait (sem_t id){

    register sem_t a1 asm ("a1") = id; //prvi argument

    register uint64 a0 asm("a0") = 0x23; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");

    return res;

}; //0x23

//0x24
int sem_signal (sem_t id){

    register sem_t a1 asm ("a1") = id; //prvi argument

    register uint64 a0 asm("a0") = 0x24; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");

    return res;
}

//Ako ne uspe kod greske vraća
typedef unsigned long time_t;
int time_sleep (time_t time){

    register time_t a1 asm ("a1") = time; //prvi argument

    register uint64 a0 asm("a0") = 0x31; //kod

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");

    return res;

}; //0x31

char getc() {

    register uint64 a0 asm("a0") = 0x41; //kod

    register char res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res): "r"(a0): "memory");

    return res;
}

void putc(char c) {

    register char a1 asm ("a1") = c; //prvi argument

    register uint64 a0 asm("a0") = 0x42; //kod

    asm volatile ("ecall" :: "r"(a0), "r"(a1): "memory");
};
