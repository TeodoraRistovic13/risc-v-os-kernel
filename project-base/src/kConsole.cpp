//
// Created by os on 8/18/22.
//

#include "../h/kConsole.hpp"

int kConsole::capacity = 1000;

int kConsole::headOB = 0;

int kConsole::tailOB = 0;

char kConsole::outputBuffer[1000];

int kConsole::headIB = 0;

int kConsole::tailIB = 0;

char kConsole::inputBuffer[1000];

kConsole::Node* kConsole::head = nullptr;

kConsole::Node* kConsole::tail = nullptr;

bool kConsole::received = false;

void kConsole::sendChars(){

    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_TX_STATUS_BIT){

        if (headOB == tailOB) return;
        char c = outputBuffer[headOB];
        *(char*)CONSOLE_TX_DATA = c;
        headOB = (headOB + 1)%capacity;

    };

}

void kConsole::receiveChars(){

    received = false;
    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_RX_STATUS_BIT){

        if((tailIB + 1)%capacity == headIB) return; //buffer full
        char c = *(char*)CONSOLE_RX_DATA;
        inputBuffer[tailIB] = c;
        tailIB = (tailIB + 1)%capacity;
        received = true;

    };

}

char kConsole::getIB(){

    if(headIB == tailIB) return 0;
    char res = inputBuffer[headIB];
    headIB = (headIB + 1)% capacity;
    return res;

}

int kConsole::putOB(char c) {

    if ((tailOB + 1)%capacity == headOB) return 1; //GRESKA : NEMA MESTA
    outputBuffer[tailOB] = c;
    tailOB = (tailOB + 1)%capacity;
    return 0; //Stavili smo sve u redu !

}

TCB* kConsole::removeFirst(){

    Node* old = head;
    if(old != nullptr){
        TCB* thr = head->thr;
        head = head->next;
        old->thr = nullptr;
        old->next = nullptr;
        //delete old;
        return thr;

    }else return nullptr;

}

void kConsole::addLast(TCB *thr){
    //prazna lista
    Node* n = new Node (thr);
    if (head == nullptr){
        head = tail = n;

    }else{
        tail->next = n;
        tail = n;
    }
}
