//
// Created by os on 8/5/22.
//

#include "../h/syscall_handler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/kSemaphore.hpp"
#include "../h/kConsole.hpp"
#include "../h/printing.hpp"

using body = void(*)();

uint64 syscall_handler(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3){
    uint64 res = 0x0;
    switch(code){
        case 0x01: {
            res = (uint64) MemoryAllocator::kmalloc(arg1);
            break;
        }
        case 0x02: {

            res = (uint64)MemoryAllocator::kfree((void*)arg1);
            break;
        }
        case 0x11:
        {
            TCB* thr = TCB::createThread((body)arg1);
            *(thread_t*)arg3 = thr;
            if(thr == nullptr){
                res = -1;
                break;
            }
            asm("mv t1, %0"::"r"(thr->savedRegs));
            asm("sd a2, 12*8(t1)");
            //thr->savedRegs[10] = arg2; //upisuje u novokreiranu nit njen argument
            break;
        }
        case 0x12:
        {
            TCB::running->setFinished(true);
            break;
        }
        case 0x13: {
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            break;
        }
        case 0x21:
        {
            sem_t semaphore = kSemaphore::createSemaphore((signed) arg2);
            *((sem_t *) arg1) = semaphore;
            if (semaphore == nullptr) {
                res = -1;
            }
            break;
        }
        case 0x22:
        {
            sem_t handle = (sem_t)arg1;
            // dovrsi deblokiranje niti i vracanje greske ! u waitu
            handle->setOpen(false);
            break;
        }
        case 0x23:{
            sem_t handle = (sem_t)arg1;
            res = handle->wait();
            break;
        }
        case 0x24:{

            sem_t handle = (sem_t)arg1;
            res = handle->signal();
            break;
        }

        case 0x31:{

            time_t time = (time_t)arg1;
            TCB::sleepThread(time);
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            break;
        }
        case 0x41:
        {
            char c = kConsole::getIB();
            if (c == 0) {
                kConsole::addLast(TCB::running);
                TCB::running->setBlocked(true);
                TCB::running->setWaitingForInput(true);
                TCB::timeSliceCounter = 0;
                TCB::dispatch(); //izvrsi neku drugu nit
            }
            res = (uint64)c;
            break;
        }
        case 0x42:
        {
            kConsole::putOB((char) arg1);
            break;
        }
    }

    return res;
};
