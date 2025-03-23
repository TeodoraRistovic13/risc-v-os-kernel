//
// Created by os on 8/12/22.
//

#include "../h/syscall_cpp.hpp"


void Thread::wrapper(void* t){
    if(t) ((Thread*)t)->run();

}

Thread::Thread(void (*body)(void *), void *arg) {

    thread_t * handle = (thread_t*)MemoryAllocator::kmalloc(sizeof(thread_t));

    thread_create(handle, body, arg);

    myHandle = *handle;
}

void Thread::dispatch() {

    thread_dispatch();

}

int Thread::start(){

   if (myHandle)
       return 1;
   else{

       thread_t * handle = (thread_t*)MemoryAllocator::kmalloc(sizeof(thread_t));

       myHandle = *handle;

       thread_create(handle, wrapper, this);

       return 0;
   }

}

int Thread::sleep (time_t t){

    time_sleep(t);

    return 0;

};

void* Thread::operator new (size_t size){

    void* ptr = mem_alloc(size);

    return ptr;

};

void Thread::operator delete (void* addr) noexcept{

    mem_free(addr);

};

PeriodicThread::PeriodicThread(time_t period){

    this->period = period;

}

void PeriodicThread::run(){

    while(true){

        this->periodicActivation();

        time_sleep(period);

    }

}

Semaphore::Semaphore(signed init){

    sem_t* handle = (sem_t*)mem_alloc(sizeof(sem_t));

    sem_open(handle, init);

    myHandle = *handle;

}

int Semaphore::wait(){

    return sem_wait(myHandle);

}

int Semaphore::signal(){

    return sem_signal(myHandle);

}

void* Semaphore::operator new (size_t size){

    void* ptr = mem_alloc(size);

    return ptr;
};

void Semaphore::operator delete (void* addr) noexcept{

    mem_free(addr);

};

char Console::getc(){

    char c = ::getc();

    return c;

}

void Console::putc(char c){

    ::putc(c);

}

