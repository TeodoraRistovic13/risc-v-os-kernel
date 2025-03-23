//
// Created by os on 8/6/22.
//

#include "../h/Scheduler.hpp"

Scheduler::Elem* Scheduler::head = nullptr;

Scheduler::Elem* Scheduler::tail = nullptr;

uint64 Scheduler::numOfThreads = 0;

TCB *Scheduler::get()
{

    Elem* old = head;
    TCB* thr = head->thr;
    head = head->next;
    old->thr = nullptr;
    old->next = nullptr;
    Scheduler::numOfThreads--;
    return thr;

}

void Scheduler::put(TCB *thr)
{
    //prazna lista
    Elem* e = new Elem (thr);
    if (head == nullptr){
        head = tail = e;

    }else{
        tail->next = e;
        tail = e;
    }
    Scheduler::numOfThreads++;
}