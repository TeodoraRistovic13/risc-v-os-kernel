.align 4
.globl supervisorTrap
.globl _ZN5Riscv20handleSupervisorTrapEv
.globl _ZN6Thread19kernelContextSwitchEv
.global kernelStack
.global running

supervisorTrap:
    //cuvanje na steku trenuntne niti

    csrw sscratch, t1

    sd t3, -2*8(sp) //cuvam t3
    mv t3, sp // u tp sam upisala sp

    sd ra, -1 * 8(sp)

    ld t1, kernelStack //prebacujem se na sistemski stek
    mv sp, t1

    mv gp, ra
    //promenice se ra ybog skoka da znas !
    call _ZN3TCB19kernelContextSwitchEv // u gp smo upisali adresu TCB::running->savedRegs

    mv ra, gp

    sd t3, 2*8(t1) //cuvamo stek pointer !
    ld t3, -2*8(t3)
    //cuvamo sve sem sp-a i t1 registra
    .irp index, 0,1,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            sd x\index, \index * 8(t1)
    .endr

    csrr t2, sscratch
    sd t2, 6*8(t1) //cuvamo t1


    call _ZN5Riscv20handleSupervisorTrapEv

    //restauracija konteksta
    call _ZN3TCB19kernelContextSwitchEv

   .irp index, 0,1,2,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            ld x\index, \index * 8(t1)
   .endr

   csrw sscratch, t2
   ld t2, 6 * 8(t1) //ucitavamo t1 u t2
   mv t1, t2
   csrr t2, sscratch //vracamo t2
   ld ra, -1 * 8(sp)

   sret


