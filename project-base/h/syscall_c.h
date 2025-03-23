//
// Created by os on 8/2/22.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../h/TCB.hpp"
#include "../h/kSemaphore.hpp"


void* mem_alloc (size_t size); //kod 0x1

int mem_free (void*); //kod 0x2

typedef struct TCB _thread;

typedef TCB* thread_t;

typedef void(*body)();

int thread_create (thread_t *handle, void(*start_routine)(void*), void* arg); //kod 0x11

int thread_exit();

void thread_dispatch (); //kod 0x13

//0x21
typedef struct kSemaphore _sem;

typedef kSemaphore* sem_t;

int sem_open (sem_t* handle, unsigned init);

int sem_close (sem_t handle); //0x22

int sem_wait (sem_t id); //0x23

int sem_signal (sem_t id); //0x24

typedef unsigned long time_t;

int time_sleep (time_t); //0x31

const int EOF = -1;

char getc (); //0x41

void putc (char); //0x42

#endif //PROJECT_BASE_SYSCALL_C_HPP
