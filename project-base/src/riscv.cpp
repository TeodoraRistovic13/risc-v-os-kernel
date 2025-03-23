//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/printing.hpp"
#include "../h/syscall_handler.hpp"
#include "../h/TCB.hpp"
#include "../h/kConsole.hpp"
#include "../lib/hw.h"

int main();

extern uint64* kernelStack;

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    Riscv::mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {

    uint64 volatile scause = r_scause();
    register uint64 arg0 asm("a0");
    register uint64 arg1 asm("a1");
    register uint64 arg2 asm("a2");
    register uint64 arg3 asm("a3");


    TCB::running->sstatus = r_sstatus();

    if(scause == 0x0000000000000008 || scause == 0x0000000000000009){

        TCB::running->sepc = r_sepc() + 4;
        syscall_handler(arg0, arg1, arg2, arg3);
        // ideja mi je da za wait dodam posebnu if granu da bi se upisivala vrednoist iz onog tcb polja !
        //if(code == 0x23) { TCB::running->savedRegs[10] = TCB::notUnblockedRegularly} i to cu sacuvati kao povratnu vrednost

        if (TCB::running->isWaitingForInput()){
            kConsole::getIB(); //trebalo bi da u a0 bude rez
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
            asm("sd a0, 10*8(t1)");
            TCB::running->setWaitingForInput(false);
        }else{
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
            asm("sd a0, 10*8(t1)");
        }

    }
    else if (scause == 0x8000000000000001UL)
    {
        //printString("TIMER\n");
        TCB::running->sepc = r_sepc();
        //printString("TIMER\n");
        mc_sip(SIP_SSIP);
        if (TCB::sleepHead != nullptr) TCB::wakeThread(); //budi niti ako ih ima
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        if (TCB::running->isWaitingForInput()) {
            kConsole::getIB(); //trebalo bi da u a0 bude rez
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
            asm("sd a0, 10*8(t1)");
            TCB::running->setWaitingForInput(false);
        }
    }
    else if (scause == 0x8000000000000009UL)
    {
        TCB::running->sepc = r_sepc();
        volatile int a = plic_claim();

        if (a == CONSOLE_IRQ){
            kConsole::receiveChars();
        }
        plic_complete(a);
        TCB* thr;
        if (kConsole::received){
            if ((thr = kConsole::removeFirst())!= nullptr){
                thr->setBlocked(false);
                Scheduler::put(thr);
            }
        }

    }else if (scause == 0x0000000000000002UL){
        TCB::running->sepc = r_sepc();
        printString("Illegal instruction\n");

    }else if (scause == 0x0000000000000005UL){
        TCB::running->sepc = r_sepc();

        printString("Nedozvoljena adresa citanja\n");

    }else if (scause == 0x0000000000000007UL){
        TCB::running->sepc = r_sepc();
        printString("Nedozvoljena adresa upisa\n");

    }
    else {
        TCB::running->sepc = r_sepc();
        printString("Sta je ovo bre :(\n");
        uint64 x = Riscv::r_scause();
        printInt(x);
        __putc('\n');

    }

    w_sepc(TCB::running->sepc);
    w_sstatus(TCB::running->sstatus);

}


