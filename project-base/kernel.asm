
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	15013103          	ld	sp,336(sp) # 8000a150 <_GLOBAL_OFFSET_TABLE_+0x68>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7cd040ef          	jal	ra,80004fe8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
_ZN5Riscv13pushRegistersEv:

    //upis registara u PCB, u scratchu se nalazi pocetak niza
   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
       sd x\index, \index * 8(gp)
   .endr
    80001000:	0001b023          	sd	zero,0(gp)
    80001004:	0011b423          	sd	ra,8(gp)
    80001008:	0021b823          	sd	sp,16(gp)
    8000100c:	0031bc23          	sd	gp,24(gp)
    80001010:	0241b023          	sd	tp,32(gp)
    80001014:	0251b423          	sd	t0,40(gp)
    80001018:	0261b823          	sd	t1,48(gp)
    8000101c:	0271bc23          	sd	t2,56(gp)
    80001020:	0481b023          	sd	s0,64(gp)
    80001024:	0491b423          	sd	s1,72(gp)
    80001028:	04a1b823          	sd	a0,80(gp)
    8000102c:	04b1bc23          	sd	a1,88(gp)
    80001030:	06c1b023          	sd	a2,96(gp)
    80001034:	06d1b423          	sd	a3,104(gp)
    80001038:	06e1b823          	sd	a4,112(gp)
    8000103c:	06f1bc23          	sd	a5,120(gp)
    80001040:	0901b023          	sd	a6,128(gp)
    80001044:	0911b423          	sd	a7,136(gp)
    80001048:	0921b823          	sd	s2,144(gp)
    8000104c:	0931bc23          	sd	s3,152(gp)
    80001050:	0b41b023          	sd	s4,160(gp)
    80001054:	0b51b423          	sd	s5,168(gp)
    80001058:	0b61b823          	sd	s6,176(gp)
    8000105c:	0b71bc23          	sd	s7,184(gp)
    80001060:	0d81b023          	sd	s8,192(gp)
    80001064:	0d91b423          	sd	s9,200(gp)
    80001068:	0da1b823          	sd	s10,208(gp)
    8000106c:	0db1bc23          	sd	s11,216(gp)
    80001070:	0fc1b023          	sd	t3,224(gp)
    80001074:	0fd1b423          	sd	t4,232(gp)
    80001078:	0fe1b823          	sd	t5,240(gp)
    8000107c:	0ff1bc23          	sd	t6,248(gp)
   ret
    80001080:	00008067          	ret

0000000080001084 <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:

   .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(gp)
   .endr
    80001084:	0001b003          	ld	zero,0(gp)
    80001088:	0081b083          	ld	ra,8(gp)
    8000108c:	0101b103          	ld	sp,16(gp)
    80001090:	0181b183          	ld	gp,24(gp)
    80001094:	0201b203          	ld	tp,32(gp)
    80001098:	0281b283          	ld	t0,40(gp)
    8000109c:	0301b303          	ld	t1,48(gp)
    800010a0:	0381b383          	ld	t2,56(gp)
    800010a4:	0401b403          	ld	s0,64(gp)
    800010a8:	0481b483          	ld	s1,72(gp)
    800010ac:	0501b503          	ld	a0,80(gp)
    800010b0:	0581b583          	ld	a1,88(gp)
    800010b4:	0601b603          	ld	a2,96(gp)
    800010b8:	0681b683          	ld	a3,104(gp)
    800010bc:	0701b703          	ld	a4,112(gp)
    800010c0:	0781b783          	ld	a5,120(gp)
    800010c4:	0801b803          	ld	a6,128(gp)
    800010c8:	0881b883          	ld	a7,136(gp)
    800010cc:	0901b903          	ld	s2,144(gp)
    800010d0:	0981b983          	ld	s3,152(gp)
    800010d4:	0a01ba03          	ld	s4,160(gp)
    800010d8:	0a81ba83          	ld	s5,168(gp)
    800010dc:	0b01bb03          	ld	s6,176(gp)
    800010e0:	0b81bb83          	ld	s7,184(gp)
    800010e4:	0c01bc03          	ld	s8,192(gp)
    800010e8:	0c81bc83          	ld	s9,200(gp)
    800010ec:	0d01bd03          	ld	s10,208(gp)
    800010f0:	0d81bd83          	ld	s11,216(gp)
    800010f4:	0e01be03          	ld	t3,224(gp)
    800010f8:	0e81be83          	ld	t4,232(gp)
    800010fc:	0f01bf03          	ld	t5,240(gp)
    80001100:	0f81bf83          	ld	t6,248(gp)
   ret
    80001104:	00008067          	ret
	...

0000000080001110 <supervisorTrap>:
.global running

supervisorTrap:
    //cuvanje na steku trenuntne niti

    csrw sscratch, t1
    80001110:	14031073          	csrw	sscratch,t1

    sd t3, -2*8(sp) //cuvam t3
    80001114:	ffc13823          	sd	t3,-16(sp)
    mv t3, sp // u tp sam upisala sp
    80001118:	00010e13          	mv	t3,sp

    sd ra, -1 * 8(sp)
    8000111c:	fe113c23          	sd	ra,-8(sp)

    ld t1, kernelStack //prebacujem se na sistemski stek
    80001120:	00009317          	auipc	t1,0x9
    80001124:	0d033303          	ld	t1,208(t1) # 8000a1f0 <kernelStack>
    mv sp, t1
    80001128:	00030113          	mv	sp,t1

    mv gp, ra
    8000112c:	00008193          	mv	gp,ra
    //promenice se ra ybog skoka da znas !
    call _ZN3TCB19kernelContextSwitchEv // u gp smo upisali adresu TCB::running->savedRegs
    80001130:	225010ef          	jal	ra,80002b54 <_ZN3TCB19kernelContextSwitchEv>

    mv ra, gp
    80001134:	00018093          	mv	ra,gp

    sd t3, 2*8(t1) //cuvamo stek pointer !
    80001138:	01c33823          	sd	t3,16(t1)
    ld t3, -2*8(t3)
    8000113c:	ff0e3e03          	ld	t3,-16(t3)
    //cuvamo sve sem sp-a i t1 registra
    .irp index, 0,1,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            sd x\index, \index * 8(t1)
    .endr
    80001140:	00033023          	sd	zero,0(t1)
    80001144:	00133423          	sd	ra,8(t1)
    80001148:	00333c23          	sd	gp,24(t1)
    8000114c:	02433023          	sd	tp,32(t1)
    80001150:	02533423          	sd	t0,40(t1)
    80001154:	02733c23          	sd	t2,56(t1)
    80001158:	04833023          	sd	s0,64(t1)
    8000115c:	04933423          	sd	s1,72(t1)
    80001160:	04a33823          	sd	a0,80(t1)
    80001164:	04b33c23          	sd	a1,88(t1)
    80001168:	06c33023          	sd	a2,96(t1)
    8000116c:	06d33423          	sd	a3,104(t1)
    80001170:	06e33823          	sd	a4,112(t1)
    80001174:	06f33c23          	sd	a5,120(t1)
    80001178:	09033023          	sd	a6,128(t1)
    8000117c:	09133423          	sd	a7,136(t1)
    80001180:	09233823          	sd	s2,144(t1)
    80001184:	09333c23          	sd	s3,152(t1)
    80001188:	0b433023          	sd	s4,160(t1)
    8000118c:	0b533423          	sd	s5,168(t1)
    80001190:	0b633823          	sd	s6,176(t1)
    80001194:	0b733c23          	sd	s7,184(t1)
    80001198:	0d833023          	sd	s8,192(t1)
    8000119c:	0d933423          	sd	s9,200(t1)
    800011a0:	0da33823          	sd	s10,208(t1)
    800011a4:	0db33c23          	sd	s11,216(t1)
    800011a8:	0fc33023          	sd	t3,224(t1)
    800011ac:	0fd33423          	sd	t4,232(t1)
    800011b0:	0fe33823          	sd	t5,240(t1)
    800011b4:	0ff33c23          	sd	t6,248(t1)

    csrr t2, sscratch
    800011b8:	140023f3          	csrr	t2,sscratch
    sd t2, 6*8(t1) //cuvamo t1
    800011bc:	02733823          	sd	t2,48(t1)


    call _ZN5Riscv20handleSupervisorTrapEv
    800011c0:	144010ef          	jal	ra,80002304 <_ZN5Riscv20handleSupervisorTrapEv>

    //restauracija konteksta
    call _ZN3TCB19kernelContextSwitchEv
    800011c4:	191010ef          	jal	ra,80002b54 <_ZN3TCB19kernelContextSwitchEv>

   .irp index, 0,1,2,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
            ld x\index, \index * 8(t1)
   .endr
    800011c8:	00033003          	ld	zero,0(t1)
    800011cc:	00833083          	ld	ra,8(t1)
    800011d0:	01033103          	ld	sp,16(t1)
    800011d4:	01833183          	ld	gp,24(t1)
    800011d8:	02033203          	ld	tp,32(t1)
    800011dc:	02833283          	ld	t0,40(t1)
    800011e0:	03833383          	ld	t2,56(t1)
    800011e4:	04033403          	ld	s0,64(t1)
    800011e8:	04833483          	ld	s1,72(t1)
    800011ec:	05033503          	ld	a0,80(t1)
    800011f0:	05833583          	ld	a1,88(t1)
    800011f4:	06033603          	ld	a2,96(t1)
    800011f8:	06833683          	ld	a3,104(t1)
    800011fc:	07033703          	ld	a4,112(t1)
    80001200:	07833783          	ld	a5,120(t1)
    80001204:	08033803          	ld	a6,128(t1)
    80001208:	08833883          	ld	a7,136(t1)
    8000120c:	09033903          	ld	s2,144(t1)
    80001210:	09833983          	ld	s3,152(t1)
    80001214:	0a033a03          	ld	s4,160(t1)
    80001218:	0a833a83          	ld	s5,168(t1)
    8000121c:	0b033b03          	ld	s6,176(t1)
    80001220:	0b833b83          	ld	s7,184(t1)
    80001224:	0c033c03          	ld	s8,192(t1)
    80001228:	0c833c83          	ld	s9,200(t1)
    8000122c:	0d033d03          	ld	s10,208(t1)
    80001230:	0d833d83          	ld	s11,216(t1)
    80001234:	0e033e03          	ld	t3,224(t1)
    80001238:	0e833e83          	ld	t4,232(t1)
    8000123c:	0f033f03          	ld	t5,240(t1)
    80001240:	0f833f83          	ld	t6,248(t1)

   csrw sscratch, t2
    80001244:	14039073          	csrw	sscratch,t2
   ld t2, 6 * 8(t1) //ucitavamo t1 u t2
    80001248:	03033383          	ld	t2,48(t1)
   mv t1, t2
    8000124c:	00038313          	mv	t1,t2
   csrr t2, sscratch //vracamo t2
    80001250:	140023f3          	csrr	t2,sscratch
   ld ra, -1 * 8(sp)
    80001254:	ff813083          	ld	ra,-8(sp)

   sret
    80001258:	10200073          	sret
	...

0000000080001268 <_ZN3TCB13contextSwitchEPm>:
.type _ZN3TCB13contextSwitchEPm @function


_ZN3TCB13contextSwitchEPm:

    mv ra, a0
    80001268:	00050093          	mv	ra,a0

    ret
    8000126c:	00008067          	ret

0000000080001270 <_ZN3TCB13contextSwitchEPmS0_>:
.global _ZN3TCB13contextSwitchEPmS0_
.type _ZN3TCB13contextSwitchEPmS0_ @function

_ZN3TCB13contextSwitchEPmS0_:

    sd ra, 1 * 8(a0)
    80001270:	00153423          	sd	ra,8(a0) # 1008 <_entry-0x7fffeff8>
    //sd sp, 2 * 8(a0)

    ld ra, 1 * 8(a1)
    80001274:	0085b083          	ld	ra,8(a1)
    //ld sp, 2 * 8(a1)

    80001278:	00008067          	ret

000000008000127c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000127c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001280:	00b29a63          	bne	t0,a1,80001294 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001284:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001288:	fe029ae3          	bnez	t0,8000127c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000128c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001290:	00008067          	ret

0000000080001294 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001294:	00100513          	li	a0,1
    80001298:	00008067          	ret

000000008000129c <_Z9mem_allocm>:
#include "../h/kConsole.hpp"




void* mem_alloc (size_t size){
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00813423          	sd	s0,8(sp)
    800012a4:	01010413          	addi	s0,sp,16
    //prosledjujem tacan br blokova


    size += sizeof(sizeof(size_t)); // povecavam velicinu za sizeof(HiddenHeader)

    register uint64 a1 asm ("a1") = (size - 1)/MEM_BLOCK_SIZE + 1;// zaokruzujemo na tacan br blokova velicine MEM_BLK_SIZE
    800012a8:	00750593          	addi	a1,a0,7
    800012ac:	0065d593          	srli	a1,a1,0x6
    800012b0:	00158593          	addi	a1,a1,1

    register uint64 a0 asm ("a0") = 0x01; // kod za mem_alloc
    800012b4:	00100513          	li	a0,1

    register void* ptr asm ("a0");

    asm volatile ("ecall" : "=r"(ptr) : "r"(a0), "r"(a1): "memory");
    800012b8:	00000073          	ecall


    return ptr;

};
    800012bc:	00813403          	ld	s0,8(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <_Z8mem_freePv>:

int mem_free(void* addr){
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00813423          	sd	s0,8(sp)
    800012d0:	01010413          	addi	s0,sp,16
    800012d4:	00050593          	mv	a1,a0


    register void* a1 asm ("a1") = addr;

    register uint64 a0 asm ("a0") = 0x02; // kod za mem_free
    800012d8:	00200513          	li	a0,2

    register int res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");
    800012dc:	00000073          	ecall

    return res;
}
    800012e0:	0005051b          	sext.w	a0,a0
    800012e4:	00813403          	ld	s0,8(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_Z13thread_createPP3TCBPFvPvES2_>:



typedef void(*function)(void*);
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00813423          	sd	s0,8(sp)
    800012f8:	01010413          	addi	s0,sp,16
    800012fc:	00050693          	mv	a3,a0



    *handle = nullptr;
    80001300:	00053023          	sd	zero,0(a0)

    register void* a2 asm ("a2") = arg; //drugi argument

    register thread_t* a3 asm ("a3") = handle;

    register uint64 a0 asm("a0") = 0x11; //kod
    80001304:	01100513          	li	a0,17

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(a0) : "r"(a0), "r"(a1), "r"(a2), "r"(a3): "memory");
    80001308:	00000073          	ecall

    return res;

};
    8000130c:	0005051b          	sext.w	a0,a0
    80001310:	00813403          	ld	s0,8(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret

000000008000131c <_Z11thread_exitv>:

//kod je 12
int thread_exit(){
    8000131c:	ff010113          	addi	sp,sp,-16
    80001320:	00813423          	sd	s0,8(sp)
    80001324:	01010413          	addi	s0,sp,16


    register uint64 a0 asm("a0") = 0x12; //kod
    80001328:	01200513          	li	a0,18

    asm volatile ("ecall" :: "r"(a0): "memory");
    8000132c:	00000073          	ecall

    return 0;
}
    80001330:	00000513          	li	a0,0
    80001334:	00813403          	ld	s0,8(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00813423          	sd	s0,8(sp)
    80001348:	01010413          	addi	s0,sp,16


    register uint64 a0 asm("a0") = 0x13;
    8000134c:	01300513          	li	a0,19

    asm volatile ("ecall" :: "r"(a0) : "memory");
    80001350:	00000073          	ecall

};
    80001354:	00813403          	ld	s0,8(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_Z8sem_openPP10kSemaphorej>:



int sem_open (sem_t* handle, unsigned init){
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    8000136c:	00058613          	mv	a2,a1



    *handle = nullptr;
    80001370:	00053023          	sd	zero,0(a0)

    register sem_t* a1 asm ("a1") = handle; //prvi argument
    80001374:	00050593          	mv	a1,a0

    register unsigned a2 asm ("a2") = init; //drugi argument

    register uint64 a0 asm("a0") = 0x21; //kod
    80001378:	02100513          	li	a0,33

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1), "r"(a2): "memory");
    8000137c:	00000073          	ecall

    return res;


};
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z9sem_closeP10kSemaphore>:

int sem_close (sem_t handle){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    8000139c:	00050593          	mv	a1,a0



    register sem_t a1 asm ("a1") = handle; //prvi argument

    register uint64 a0 asm("a0") = 0x22; //kod
    800013a0:	02200513          	li	a0,34

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");
    800013a4:	00000073          	ecall

    return res;

}; //0x22
    800013a8:	0005051b          	sext.w	a0,a0
    800013ac:	00813403          	ld	s0,8(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z8sem_waitP10kSemaphore>:

int sem_wait (sem_t id){
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    800013c4:	00050593          	mv	a1,a0



    register sem_t a1 asm ("a1") = id; //prvi argument

    register uint64 a0 asm("a0") = 0x23; //kod
    800013c8:	02300513          	li	a0,35

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");
    800013cc:	00000073          	ecall

    return res;

}; //0x23
    800013d0:	0005051b          	sext.w	a0,a0
    800013d4:	00813403          	ld	s0,8(sp)
    800013d8:	01010113          	addi	sp,sp,16
    800013dc:	00008067          	ret

00000000800013e0 <_Z10sem_signalP10kSemaphore>:

//0x24
int sem_signal (sem_t id){
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00813423          	sd	s0,8(sp)
    800013e8:	01010413          	addi	s0,sp,16
    800013ec:	00050593          	mv	a1,a0



    register sem_t a1 asm ("a1") = id; //prvi argument

    register uint64 a0 asm("a0") = 0x24; //kod
    800013f0:	02400513          	li	a0,36

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");
    800013f4:	00000073          	ecall

    return res;

}
    800013f8:	0005051b          	sext.w	a0,a0
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z10time_sleepm>:


//Ako ne uspe kod greske vraća
typedef unsigned long time_t;
int time_sleep (time_t time){
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    80001414:	00050593          	mv	a1,a0



    register time_t a1 asm ("a1") = time; //prvi argument

    register uint64 a0 asm("a0") = 0x31; //kod
    80001418:	03100513          	li	a0,49

    register uint64 res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res) : "r"(a0), "r"(a1): "memory");
    8000141c:	00000073          	ecall

    return res;

}; //0x31
    80001420:	0005051b          	sext.w	a0,a0
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z4getcv>:

char getc() {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16

    register uint64 a0 asm("a0") = 0x41; //kod
    8000143c:	04100513          	li	a0,65

    register char res asm ("a0"); // povratna vrednost

    asm volatile ("ecall" : "=r"(res): "r"(a0): "memory");
    80001440:	00000073          	ecall

    return res;

}
    80001444:	0ff57513          	andi	a0,a0,255
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z4putcc>:


void putc(char c) {
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16


    register char a1 asm ("a1") = c; //prvi argument
    80001460:	00050593          	mv	a1,a0

    register uint64 a0 asm("a0") = 0x42; //kod
    80001464:	04200513          	li	a0,66

    asm volatile ("ecall" :: "r"(a0), "r"(a1): "memory");
    80001468:	00000073          	ecall

};
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z15syscall_handlermmmm>:

using body = void(*)();

uint64 syscall_handler(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3){
    uint64 res = 0x0;
    switch(code){
    80001478:	04200793          	li	a5,66
    8000147c:	1ca7e263          	bltu	a5,a0,80001640 <_Z15syscall_handlermmmm+0x1c8>
uint64 syscall_handler(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3){
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	01213023          	sd	s2,0(sp)
    80001494:	02010413          	addi	s0,sp,32
    80001498:	00058913          	mv	s2,a1
    8000149c:	00068493          	mv	s1,a3
    800014a0:	00251513          	slli	a0,a0,0x2
    800014a4:	00007717          	auipc	a4,0x7
    800014a8:	b7c70713          	addi	a4,a4,-1156 # 80008020 <CONSOLE_STATUS+0x10>
    800014ac:	00e50533          	add	a0,a0,a4
    800014b0:	00052783          	lw	a5,0(a0)
    800014b4:	00e787b3          	add	a5,a5,a4
    800014b8:	00078067          	jr	a5
        case 0x01: {
            res = (uint64) MemoryAllocator::kmalloc(arg1);
    800014bc:	00058513          	mv	a0,a1
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	6bc080e7          	jalr	1724(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
            break;
    800014c8:	1500006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x02: {

            res = (uint64)MemoryAllocator::kfree((void*)arg1);
    800014cc:	00058513          	mv	a0,a1
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	738080e7          	jalr	1848(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
            break;
    800014d8:	1400006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x11:
        {
            TCB* thr = TCB::createThread((body)arg1);
    800014dc:	00058513          	mv	a0,a1
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	540080e7          	jalr	1344(ra) # 80002a20 <_ZN3TCB12createThreadEPFvvE>
            *(thread_t*)arg3 = thr;
    800014e8:	00a4b023          	sd	a0,0(s1)
            if(thr == nullptr){
    800014ec:	14050263          	beqz	a0,80001630 <_Z15syscall_handlermmmm+0x1b8>
                res = -1;
                break;
            }
            asm("mv t1, %0"::"r"(thr->savedRegs));
    800014f0:	01053783          	ld	a5,16(a0)
    800014f4:	00078313          	mv	t1,a5
            asm("sd a2, 12*8(t1)");
    800014f8:	06c33023          	sd	a2,96(t1)
    uint64 res = 0x0;
    800014fc:	00000513          	li	a0,0
            //thr->savedRegs[10] = arg2; //upisuje u novokreiranu nit njen argument
            break;
    80001500:	1180006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x12:
        {
            TCB::running->setFinished(true);
    80001504:	00009797          	auipc	a5,0x9
    80001508:	c6c7b783          	ld	a5,-916(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000150c:	0007b783          	ld	a5,0(a5)

    bool isKernelThread() const { return kernelThreadFlag; }

    bool isWaitingForInput() const { return waitingForInput; }

    void setFinished(bool value) { finished = value; }
    80001510:	00100713          	li	a4,1
    80001514:	02e78823          	sb	a4,48(a5)
    uint64 res = 0x0;
    80001518:	00000513          	li	a0,0
    8000151c:	0fc0006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
            break;
        }
        case 0x13: {
            TCB::timeSliceCounter = 0;
    80001520:	00009797          	auipc	a5,0x9
    80001524:	bf87b783          	ld	a5,-1032(a5) # 8000a118 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001528:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	378080e7          	jalr	888(ra) # 800028a4 <_ZN3TCB8dispatchEv>
    uint64 res = 0x0;
    80001534:	00000513          	li	a0,0
            break;
    80001538:	0e00006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x21:
        {
            sem_t semaphore = kSemaphore::createSemaphore((signed) arg2);
    8000153c:	0006051b          	sext.w	a0,a2
    80001540:	00000097          	auipc	ra,0x0
    80001544:	3ac080e7          	jalr	940(ra) # 800018ec <_ZN10kSemaphore15createSemaphoreEi>
            *((sem_t *) arg1) = semaphore;
    80001548:	00a93023          	sd	a0,0(s2)
            if (semaphore == nullptr) {
    8000154c:	0e050663          	beqz	a0,80001638 <_Z15syscall_handlermmmm+0x1c0>
    uint64 res = 0x0;
    80001550:	00000513          	li	a0,0
    80001554:	0c40006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
    int wait();
    int signal();
    signed value() const { return val; }

    bool isOpen() const { return opened; }
    void setOpen( bool state ){ opened = state; }
    80001558:	00058223          	sb	zero,4(a1)
    8000155c:	00000513          	li	a0,0
    80001560:	0b80006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
            handle->setOpen(false);
            break;
        }
        case 0x23:{
            sem_t handle = (sem_t)arg1;
            res = handle->wait();
    80001564:	00058513          	mv	a0,a1
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	210080e7          	jalr	528(ra) # 80001778 <_ZN10kSemaphore4waitEv>
            break;
    80001570:	0a80006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x24:{

            sem_t handle = (sem_t)arg1;
            res = handle->signal();
    80001574:	00058513          	mv	a0,a1
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	2e8080e7          	jalr	744(ra) # 80001860 <_ZN10kSemaphore6signalEv>
            break;
    80001580:	0980006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }

        case 0x31:{

            time_t time = (time_t)arg1;
            TCB::sleepThread(time);
    80001584:	00058513          	mv	a0,a1
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	0dc080e7          	jalr	220(ra) # 80002664 <_ZN3TCB11sleepThreadEm>
            TCB::timeSliceCounter = 0;
    80001590:	00009797          	auipc	a5,0x9
    80001594:	b887b783          	ld	a5,-1144(a5) # 8000a118 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001598:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	308080e7          	jalr	776(ra) # 800028a4 <_ZN3TCB8dispatchEv>
    uint64 res = 0x0;
    800015a4:	00000513          	li	a0,0
            break;
    800015a8:	0700006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
        }
        case 0x41:
        {
            char c = kConsole::getIB();
    800015ac:	00002097          	auipc	ra,0x2
    800015b0:	8bc080e7          	jalr	-1860(ra) # 80002e68 <_ZN8kConsole5getIBEv>
    800015b4:	00050493          	mv	s1,a0
            if (c == 0) {
    800015b8:	00050663          	beqz	a0,800015c4 <_Z15syscall_handlermmmm+0x14c>
                TCB::running->setBlocked(true);
                TCB::running->setWaitingForInput(true);
                TCB::timeSliceCounter = 0;
                TCB::dispatch(); //izvrsi neku drugu nit
            }
            res = (uint64)c;
    800015bc:	00048513          	mv	a0,s1
            break;
    800015c0:	0580006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
                kConsole::addLast(TCB::running);
    800015c4:	00009917          	auipc	s2,0x9
    800015c8:	bac93903          	ld	s2,-1108(s2) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    800015cc:	00093503          	ld	a0,0(s2)
    800015d0:	00002097          	auipc	ra,0x2
    800015d4:	994080e7          	jalr	-1644(ra) # 80002f64 <_ZN8kConsole7addLastEP3TCB>
                TCB::running->setBlocked(true);
    800015d8:	00093783          	ld	a5,0(s2)

    void setBlocked(bool value) { blocked = value; }
    800015dc:	00100713          	li	a4,1
    800015e0:	02e788a3          	sb	a4,49(a5)

    void setAsleep(bool value) { asleep = value; }

    void setKernelFlag(bool value) { kernelThreadFlag = value; }

    void setWaitingForInput(bool value) { waitingForInput = value; }
    800015e4:	02e78a23          	sb	a4,52(a5)
                TCB::timeSliceCounter = 0;
    800015e8:	00009797          	auipc	a5,0x9
    800015ec:	b307b783          	ld	a5,-1232(a5) # 8000a118 <_GLOBAL_OFFSET_TABLE_+0x30>
    800015f0:	0007b023          	sd	zero,0(a5)
                TCB::dispatch(); //izvrsi neku drugu nit
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	2b0080e7          	jalr	688(ra) # 800028a4 <_ZN3TCB8dispatchEv>
    800015fc:	fc1ff06f          	j	800015bc <_Z15syscall_handlermmmm+0x144>
        }
        case 0x42:
        {
            kConsole::putOB((char) arg1);
    80001600:	0ff5f513          	andi	a0,a1,255
    80001604:	00002097          	auipc	ra,0x2
    80001608:	8bc080e7          	jalr	-1860(ra) # 80002ec0 <_ZN8kConsole5putOBEc>
    uint64 res = 0x0;
    8000160c:	00000513          	li	a0,0
            break;
    80001610:	0080006f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
                res = -1;
    80001614:	00000513          	li	a0,0
        }
    }

    return res;
    80001618:	01813083          	ld	ra,24(sp)
    8000161c:	01013403          	ld	s0,16(sp)
    80001620:	00813483          	ld	s1,8(sp)
    80001624:	00013903          	ld	s2,0(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret
                res = -1;
    80001630:	fff00513          	li	a0,-1
    80001634:	fe5ff06f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
                res = -1;
    80001638:	fff00513          	li	a0,-1
    return res;
    8000163c:	fddff06f          	j	80001618 <_Z15syscall_handlermmmm+0x1a0>
                res = -1;
    80001640:	00000513          	li	a0,0
    80001644:	00008067          	ret

0000000080001648 <_Z9heapSetupv>:

//ovaj kod radi alignment u 1 linije --> promeni posle i pazi jer zaokruzuje na prvu vecu ili jednaku; ne odgovara za heapEnd
//a =  (void*)((uint64(a) + uint64(MEM_BLOCK_SIZE) - 1) &~ uint64(MEM_BLOCK_SIZE - 1));


int heapSetup() {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16

    MemoryAllocator::hStart = (void*)((uint64(HEAP_START_ADDR) + uint64(MEM_BLOCK_SIZE) - 1) &~ uint64(MEM_BLOCK_SIZE - 1));
    80001654:	00009797          	auipc	a5,0x9
    80001658:	ab47b783          	ld	a5,-1356(a5) # 8000a108 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000165c:	0007b783          	ld	a5,0(a5)
    80001660:	03f78793          	addi	a5,a5,63
    80001664:	fc07f793          	andi	a5,a5,-64
    80001668:	00009717          	auipc	a4,0x9
    8000166c:	b0073703          	ld	a4,-1280(a4) # 8000a168 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001670:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::hEnd = (void*)((uint64(HEAP_END_ADDR) + uint64(MEM_BLOCK_SIZE) - 1) &~ uint64(MEM_BLOCK_SIZE - 1));
    80001674:	00009717          	auipc	a4,0x9
    80001678:	b0473703          	ld	a4,-1276(a4) # 8000a178 <_GLOBAL_OFFSET_TABLE_+0x90>
    8000167c:	00073683          	ld	a3,0(a4)
    80001680:	03f68713          	addi	a4,a3,63
    80001684:	fc077713          	andi	a4,a4,-64
    80001688:	00009617          	auipc	a2,0x9
    8000168c:	ad863603          	ld	a2,-1320(a2) # 8000a160 <_GLOBAL_OFFSET_TABLE_+0x78>
    80001690:	00e63023          	sd	a4,0(a2)

    if (uint64(MemoryAllocator::hEnd) > (uint64) HEAP_END_ADDR)
    80001694:	00e6f663          	bgeu	a3,a4,800016a0 <_Z9heapSetupv+0x58>
        MemoryAllocator::hEnd = (void*)((uint64)MemoryAllocator::hEnd -(uint64)MEM_BLOCK_SIZE); // smanji za ceo blk ako adresa nije poravnata
    80001698:	fc070713          	addi	a4,a4,-64
    8000169c:	00e63023          	sd	a4,0(a2)

    //inicijalizujemo blk header za prvi slobodan blok
    MemoryAllocator::freeMemHead = (BlockHeader*) MemoryAllocator::hStart;
    800016a0:	00009717          	auipc	a4,0x9
    800016a4:	a8873703          	ld	a4,-1400(a4) # 8000a128 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016a8:	00f73023          	sd	a5,0(a4)
    (*MemoryAllocator::freeMemHead).next = (*MemoryAllocator::freeMemHead).prev = nullptr;
    800016ac:	0007b023          	sd	zero,0(a5)
    800016b0:	00073703          	ld	a4,0(a4)
    800016b4:	00073423          	sd	zero,8(a4)
    (*MemoryAllocator::freeMemHead).size = ((uint64)MemoryAllocator::hEnd - (uint64)MemoryAllocator::hStart)/MEM_BLOCK_SIZE; //velicina izrazena u br blokove
    800016b8:	00009797          	auipc	a5,0x9
    800016bc:	aa87b783          	ld	a5,-1368(a5) # 8000a160 <_GLOBAL_OFFSET_TABLE_+0x78>
    800016c0:	0007b783          	ld	a5,0(a5)
    800016c4:	00009697          	auipc	a3,0x9
    800016c8:	aa46b683          	ld	a3,-1372(a3) # 8000a168 <_GLOBAL_OFFSET_TABLE_+0x80>
    800016cc:	0006b683          	ld	a3,0(a3)
    800016d0:	40d787b3          	sub	a5,a5,a3
    800016d4:	0067d793          	srli	a5,a5,0x6
    800016d8:	00f73823          	sd	a5,16(a4)
    return 0;
    800016dc:	00000513          	li	a0,0
    800016e0:	00813403          	ld	s0,8(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_ZN10kSemaphore5blockEv>:
    }
    return 1;

};

void kSemaphore::block(){
    800016ec:	fe010113          	addi	sp,sp,-32
    800016f0:	00113c23          	sd	ra,24(sp)
    800016f4:	00813823          	sd	s0,16(sp)
    800016f8:	00913423          	sd	s1,8(sp)
    800016fc:	01213023          	sd	s2,0(sp)
    80001700:	02010413          	addi	s0,sp,32
    80001704:	00050493          	mv	s1,a0

    TCB* old = TCB::running;
    80001708:	00009797          	auipc	a5,0x9
    8000170c:	a687b783          	ld	a5,-1432(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001710:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool value) { blocked = value; }
    80001714:	00100793          	li	a5,1
    80001718:	02f908a3          	sb	a5,49(s2)
    old->setBlocked(true);
    numOfBlocked++;
    8000171c:	01852783          	lw	a5,24(a0)
    80001720:	0017879b          	addiw	a5,a5,1
    80001724:	00f52c23          	sw	a5,24(a0)

        void* operator new (size_t n){

            n = MemoryAllocator::allocateBytes(n);

            return MemoryAllocator::kmalloc(n);
    80001728:	00100513          	li	a0,1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	450080e7          	jalr	1104(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001734:	01253023          	sd	s2,0(a0)
    80001738:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    8000173c:	0104b783          	ld	a5,16(s1)
    80001740:	02078663          	beqz	a5,8000176c <_ZN10kSemaphore5blockEv+0x80>
        {
            tail->next = elem;
    80001744:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001748:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(old);
    TCB::dispatch();
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	158080e7          	jalr	344(ra) # 800028a4 <_ZN3TCB8dispatchEv>
}
    80001754:	01813083          	ld	ra,24(sp)
    80001758:	01013403          	ld	s0,16(sp)
    8000175c:	00813483          	ld	s1,8(sp)
    80001760:	00013903          	ld	s2,0(sp)
    80001764:	02010113          	addi	sp,sp,32
    80001768:	00008067          	ret
        } else
        {
            head = tail = elem;
    8000176c:	00a4b823          	sd	a0,16(s1)
    80001770:	00a4b423          	sd	a0,8(s1)
    80001774:	fd9ff06f          	j	8000174c <_ZN10kSemaphore5blockEv+0x60>

0000000080001778 <_ZN10kSemaphore4waitEv>:
    if (opened){
    80001778:	00454783          	lbu	a5,4(a0)
    8000177c:	04078663          	beqz	a5,800017c8 <_ZN10kSemaphore4waitEv+0x50>
        if(--val < 0) {
    80001780:	00052783          	lw	a5,0(a0)
    80001784:	fff7879b          	addiw	a5,a5,-1
    80001788:	00f52023          	sw	a5,0(a0)
    8000178c:	02079713          	slli	a4,a5,0x20
    80001790:	00074663          	bltz	a4,8000179c <_ZN10kSemaphore4waitEv+0x24>
        return 0;
    80001794:	00000513          	li	a0,0
}
    80001798:	00008067          	ret
int kSemaphore::wait(){
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00113423          	sd	ra,8(sp)
    800017a4:	00813023          	sd	s0,0(sp)
    800017a8:	01010413          	addi	s0,sp,16
            block();
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	f40080e7          	jalr	-192(ra) # 800016ec <_ZN10kSemaphore5blockEv>
            return 3;
    800017b4:	00300513          	li	a0,3
}
    800017b8:	00813083          	ld	ra,8(sp)
    800017bc:	00013403          	ld	s0,0(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret
    return 1;
    800017c8:	00100513          	li	a0,1
    800017cc:	00008067          	ret

00000000800017d0 <_ZN10kSemaphore7unblockEv>:

void kSemaphore::unblock(){
    800017d0:	fe010113          	addi	sp,sp,-32
    800017d4:	00113c23          	sd	ra,24(sp)
    800017d8:	00813823          	sd	s0,16(sp)
    800017dc:	00913423          	sd	s1,8(sp)
    800017e0:	01213023          	sd	s2,0(sp)
    800017e4:	02010413          	addi	s0,sp,32
    800017e8:	00050493          	mv	s1,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800017ec:	00853503          	ld	a0,8(a0)
    800017f0:	06050063          	beqz	a0,80001850 <_ZN10kSemaphore7unblockEv+0x80>

        Elem *elem = head;
        head = head->next;
    800017f4:	00853783          	ld	a5,8(a0)
    800017f8:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    800017fc:	04078663          	beqz	a5,80001848 <_ZN10kSemaphore7unblockEv+0x78>

        T *ret = elem->data;
    80001800:	00053903          	ld	s2,0(a0)
            MemoryAllocator::kfree(p);
    80001804:	00001097          	auipc	ra,0x1
    80001808:	404080e7          	jalr	1028(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
    8000180c:	020908a3          	sb	zero,49(s2)

    TCB* thr = blocked.removeFirst();
    thr->setBlocked(false);
    numOfBlocked = (numOfBlocked - 1 <= 0 )? 0: numOfBlocked - 1 ;
    80001810:	0184a703          	lw	a4,24(s1)
    80001814:	00070793          	mv	a5,a4
    80001818:	04e05063          	blez	a4,80001858 <_ZN10kSemaphore7unblockEv+0x88>
    8000181c:	fff7879b          	addiw	a5,a5,-1
    80001820:	00f4ac23          	sw	a5,24(s1)
    Scheduler::put(thr);
    80001824:	00090513          	mv	a0,s2
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	42c080e7          	jalr	1068(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
}
    80001830:	01813083          	ld	ra,24(sp)
    80001834:	01013403          	ld	s0,16(sp)
    80001838:	00813483          	ld	s1,8(sp)
    8000183c:	00013903          	ld	s2,0(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret
        if (!head) { tail = 0; }
    80001848:	0004b823          	sd	zero,16(s1)
    8000184c:	fb5ff06f          	j	80001800 <_ZN10kSemaphore7unblockEv+0x30>
        if (!head) { return 0; }
    80001850:	00050913          	mv	s2,a0
    80001854:	fb9ff06f          	j	8000180c <_ZN10kSemaphore7unblockEv+0x3c>
    numOfBlocked = (numOfBlocked - 1 <= 0 )? 0: numOfBlocked - 1 ;
    80001858:	00100793          	li	a5,1
    8000185c:	fc1ff06f          	j	8000181c <_ZN10kSemaphore7unblockEv+0x4c>

0000000080001860 <_ZN10kSemaphore6signalEv>:
    if (opened){
    80001860:	00454783          	lbu	a5,4(a0)
    80001864:	04078663          	beqz	a5,800018b0 <_ZN10kSemaphore6signalEv+0x50>
        if(++val <= 0) {
    80001868:	00052783          	lw	a5,0(a0)
    8000186c:	0017879b          	addiw	a5,a5,1
    80001870:	0007871b          	sext.w	a4,a5
    80001874:	00f52023          	sw	a5,0(a0)
    80001878:	00e05663          	blez	a4,80001884 <_ZN10kSemaphore6signalEv+0x24>
        return 0;
    8000187c:	00000513          	li	a0,0
};
    80001880:	00008067          	ret
int kSemaphore::signal(){
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00113423          	sd	ra,8(sp)
    8000188c:	00813023          	sd	s0,0(sp)
    80001890:	01010413          	addi	s0,sp,16
            unblock();
    80001894:	00000097          	auipc	ra,0x0
    80001898:	f3c080e7          	jalr	-196(ra) # 800017d0 <_ZN10kSemaphore7unblockEv>
            return 3;
    8000189c:	00300513          	li	a0,3
};
    800018a0:	00813083          	ld	ra,8(sp)
    800018a4:	00013403          	ld	s0,0(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret
    return 1;
    800018b0:	00100513          	li	a0,1
    800018b4:	00008067          	ret

00000000800018b8 <_ZN10kSemaphorenwEm>:

void* kSemaphore::operator new (size_t n){
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16

   static void* hStart;

   static void* hEnd;

   static uint64 allocateBytes(size_t size){ return (size - 1)/MEM_BLOCK_SIZE + 1; };
    800018c8:	fff50513          	addi	a0,a0,-1
    800018cc:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    800018d0:	00150513          	addi	a0,a0,1
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	2a8080e7          	jalr	680(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	01010113          	addi	sp,sp,16
    800018e8:	00008067          	ret

00000000800018ec <_ZN10kSemaphore15createSemaphoreEi>:
kSemaphore* kSemaphore::createSemaphore(signed init) {
    800018ec:	fe010113          	addi	sp,sp,-32
    800018f0:	00113c23          	sd	ra,24(sp)
    800018f4:	00813823          	sd	s0,16(sp)
    800018f8:	00913423          	sd	s1,8(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00050493          	mv	s1,a0
    return new kSemaphore(init);
    80001904:	02000513          	li	a0,32
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	fb0080e7          	jalr	-80(ra) # 800018b8 <_ZN10kSemaphorenwEm>
    List() : head(0), tail(0) {}
    80001910:	00053423          	sd	zero,8(a0)
    80001914:	00053823          	sd	zero,16(a0)
    void block();
    void unblock();

private:

    kSemaphore(signed init = 1){ val = init; opened = true; numOfBlocked = 0; };
    80001918:	00952023          	sw	s1,0(a0)
    8000191c:	00100713          	li	a4,1
    80001920:	00e50223          	sb	a4,4(a0)
    80001924:	00052c23          	sw	zero,24(a0)
}
    80001928:	01813083          	ld	ra,24(sp)
    8000192c:	01013403          	ld	s0,16(sp)
    80001930:	00813483          	ld	s1,8(sp)
    80001934:	02010113          	addi	sp,sp,32
    80001938:	00008067          	ret

000000008000193c <_ZN10kSemaphoredlEPv>:


void kSemaphore::operator delete (void* p) noexcept
{
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00113423          	sd	ra,8(sp)
    80001944:	00813023          	sd	s0,0(sp)
    80001948:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	2bc080e7          	jalr	700(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80001954:	00813083          	ld	ra,8(sp)
    80001958:	00013403          	ld	s0,0(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	02010413          	addi	s0,sp,32
    80001978:	00050493          	mv	s1,a0
    LOCK();
    8000197c:	00100613          	li	a2,1
    80001980:	00000593          	li	a1,0
    80001984:	00009517          	auipc	a0,0x9
    80001988:	84c50513          	addi	a0,a0,-1972 # 8000a1d0 <lockPrint>
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	8f0080e7          	jalr	-1808(ra) # 8000127c <copy_and_swap>
    80001994:	fe0514e3          	bnez	a0,8000197c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001998:	0004c503          	lbu	a0,0(s1)
    8000199c:	00050a63          	beqz	a0,800019b0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	ab4080e7          	jalr	-1356(ra) # 80001454 <_Z4putcc>
        string++;
    800019a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800019ac:	fedff06f          	j	80001998 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800019b0:	00000613          	li	a2,0
    800019b4:	00100593          	li	a1,1
    800019b8:	00009517          	auipc	a0,0x9
    800019bc:	81850513          	addi	a0,a0,-2024 # 8000a1d0 <lockPrint>
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	8bc080e7          	jalr	-1860(ra) # 8000127c <copy_and_swap>
    800019c8:	fe0514e3          	bnez	a0,800019b0 <_Z11printStringPKc+0x4c>
}
    800019cc:	01813083          	ld	ra,24(sp)
    800019d0:	01013403          	ld	s0,16(sp)
    800019d4:	00813483          	ld	s1,8(sp)
    800019d8:	02010113          	addi	sp,sp,32
    800019dc:	00008067          	ret

00000000800019e0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800019e0:	fd010113          	addi	sp,sp,-48
    800019e4:	02113423          	sd	ra,40(sp)
    800019e8:	02813023          	sd	s0,32(sp)
    800019ec:	00913c23          	sd	s1,24(sp)
    800019f0:	01213823          	sd	s2,16(sp)
    800019f4:	01313423          	sd	s3,8(sp)
    800019f8:	01413023          	sd	s4,0(sp)
    800019fc:	03010413          	addi	s0,sp,48
    80001a00:	00050993          	mv	s3,a0
    80001a04:	00058a13          	mv	s4,a1

    LOCK();
    80001a08:	00100613          	li	a2,1
    80001a0c:	00000593          	li	a1,0
    80001a10:	00008517          	auipc	a0,0x8
    80001a14:	7c050513          	addi	a0,a0,1984 # 8000a1d0 <lockPrint>
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	864080e7          	jalr	-1948(ra) # 8000127c <copy_and_swap>
    80001a20:	fe0514e3          	bnez	a0,80001a08 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001a24:	00000913          	li	s2,0
    80001a28:	00090493          	mv	s1,s2
    80001a2c:	0019091b          	addiw	s2,s2,1
    80001a30:	03495a63          	bge	s2,s4,80001a64 <_Z9getStringPci+0x84>
        cc = getc();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	9fc080e7          	jalr	-1540(ra) # 80001430 <_Z4getcv>
        if(cc < 1)
    80001a3c:	02050463          	beqz	a0,80001a64 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80001a40:	009984b3          	add	s1,s3,s1
    80001a44:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001a48:	00a00793          	li	a5,10
    80001a4c:	00f50a63          	beq	a0,a5,80001a60 <_Z9getStringPci+0x80>
    80001a50:	00d00793          	li	a5,13
    80001a54:	fcf51ae3          	bne	a0,a5,80001a28 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80001a58:	00090493          	mv	s1,s2
    80001a5c:	0080006f          	j	80001a64 <_Z9getStringPci+0x84>
    80001a60:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001a64:	009984b3          	add	s1,s3,s1
    80001a68:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80001a6c:	00000613          	li	a2,0
    80001a70:	00100593          	li	a1,1
    80001a74:	00008517          	auipc	a0,0x8
    80001a78:	75c50513          	addi	a0,a0,1884 # 8000a1d0 <lockPrint>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	800080e7          	jalr	-2048(ra) # 8000127c <copy_and_swap>
    80001a84:	fe0514e3          	bnez	a0,80001a6c <_Z9getStringPci+0x8c>
    return buf;
}
    80001a88:	00098513          	mv	a0,s3
    80001a8c:	02813083          	ld	ra,40(sp)
    80001a90:	02013403          	ld	s0,32(sp)
    80001a94:	01813483          	ld	s1,24(sp)
    80001a98:	01013903          	ld	s2,16(sp)
    80001a9c:	00813983          	ld	s3,8(sp)
    80001aa0:	00013a03          	ld	s4,0(sp)
    80001aa4:	03010113          	addi	sp,sp,48
    80001aa8:	00008067          	ret

0000000080001aac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00813423          	sd	s0,8(sp)
    80001ab4:	01010413          	addi	s0,sp,16
    80001ab8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001abc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001ac0:	0006c603          	lbu	a2,0(a3)
    80001ac4:	fd06071b          	addiw	a4,a2,-48
    80001ac8:	0ff77713          	andi	a4,a4,255
    80001acc:	00900793          	li	a5,9
    80001ad0:	02e7e063          	bltu	a5,a4,80001af0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001ad4:	0025179b          	slliw	a5,a0,0x2
    80001ad8:	00a787bb          	addw	a5,a5,a0
    80001adc:	0017979b          	slliw	a5,a5,0x1
    80001ae0:	00168693          	addi	a3,a3,1
    80001ae4:	00c787bb          	addw	a5,a5,a2
    80001ae8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001aec:	fd5ff06f          	j	80001ac0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001af0:	00813403          	ld	s0,8(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001afc:	fc010113          	addi	sp,sp,-64
    80001b00:	02113c23          	sd	ra,56(sp)
    80001b04:	02813823          	sd	s0,48(sp)
    80001b08:	02913423          	sd	s1,40(sp)
    80001b0c:	03213023          	sd	s2,32(sp)
    80001b10:	01313c23          	sd	s3,24(sp)
    80001b14:	04010413          	addi	s0,sp,64
    80001b18:	00050493          	mv	s1,a0
    80001b1c:	00058913          	mv	s2,a1
    80001b20:	00060993          	mv	s3,a2
    LOCK();
    80001b24:	00100613          	li	a2,1
    80001b28:	00000593          	li	a1,0
    80001b2c:	00008517          	auipc	a0,0x8
    80001b30:	6a450513          	addi	a0,a0,1700 # 8000a1d0 <lockPrint>
    80001b34:	fffff097          	auipc	ra,0xfffff
    80001b38:	748080e7          	jalr	1864(ra) # 8000127c <copy_and_swap>
    80001b3c:	fe0514e3          	bnez	a0,80001b24 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001b40:	00098463          	beqz	s3,80001b48 <_Z8printIntiii+0x4c>
    80001b44:	0804c463          	bltz	s1,80001bcc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001b48:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001b4c:	00000593          	li	a1,0
    }

    i = 0;
    80001b50:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001b54:	0009079b          	sext.w	a5,s2
    80001b58:	0325773b          	remuw	a4,a0,s2
    80001b5c:	00048613          	mv	a2,s1
    80001b60:	0014849b          	addiw	s1,s1,1
    80001b64:	02071693          	slli	a3,a4,0x20
    80001b68:	0206d693          	srli	a3,a3,0x20
    80001b6c:	00008717          	auipc	a4,0x8
    80001b70:	34c70713          	addi	a4,a4,844 # 80009eb8 <digits>
    80001b74:	00d70733          	add	a4,a4,a3
    80001b78:	00074683          	lbu	a3,0(a4)
    80001b7c:	fd040713          	addi	a4,s0,-48
    80001b80:	00c70733          	add	a4,a4,a2
    80001b84:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80001b88:	0005071b          	sext.w	a4,a0
    80001b8c:	0325553b          	divuw	a0,a0,s2
    80001b90:	fcf772e3          	bgeu	a4,a5,80001b54 <_Z8printIntiii+0x58>
    if(neg)
    80001b94:	00058c63          	beqz	a1,80001bac <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80001b98:	fd040793          	addi	a5,s0,-48
    80001b9c:	009784b3          	add	s1,a5,s1
    80001ba0:	02d00793          	li	a5,45
    80001ba4:	fef48823          	sb	a5,-16(s1)
    80001ba8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80001bac:	fff4849b          	addiw	s1,s1,-1
    80001bb0:	0204c463          	bltz	s1,80001bd8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80001bb4:	fd040793          	addi	a5,s0,-48
    80001bb8:	009787b3          	add	a5,a5,s1
    80001bbc:	ff07c503          	lbu	a0,-16(a5)
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	894080e7          	jalr	-1900(ra) # 80001454 <_Z4putcc>
    80001bc8:	fe5ff06f          	j	80001bac <_Z8printIntiii+0xb0>
        x = -xx;
    80001bcc:	4090053b          	negw	a0,s1
        neg = 1;
    80001bd0:	00100593          	li	a1,1
        x = -xx;
    80001bd4:	f7dff06f          	j	80001b50 <_Z8printIntiii+0x54>
    UNLOCK();
    80001bd8:	00000613          	li	a2,0
    80001bdc:	00100593          	li	a1,1
    80001be0:	00008517          	auipc	a0,0x8
    80001be4:	5f050513          	addi	a0,a0,1520 # 8000a1d0 <lockPrint>
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	694080e7          	jalr	1684(ra) # 8000127c <copy_and_swap>
    80001bf0:	fe0514e3          	bnez	a0,80001bd8 <_Z8printIntiii+0xdc>
    80001bf4:	03813083          	ld	ra,56(sp)
    80001bf8:	03013403          	ld	s0,48(sp)
    80001bfc:	02813483          	ld	s1,40(sp)
    80001c00:	02013903          	ld	s2,32(sp)
    80001c04:	01813983          	ld	s3,24(sp)
    80001c08:	04010113          	addi	sp,sp,64
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN9Scheduler3getEv>:
Scheduler::Elem* Scheduler::tail = nullptr;

uint64 Scheduler::numOfThreads = 0;

TCB *Scheduler::get()
{
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00813423          	sd	s0,8(sp)
    80001c18:	01010413          	addi	s0,sp,16

    Elem* old = head;
    80001c1c:	00008797          	auipc	a5,0x8
    80001c20:	5bc78793          	addi	a5,a5,1468 # 8000a1d8 <_ZN9Scheduler4headE>
    80001c24:	0007b703          	ld	a4,0(a5)
    TCB* thr = head->thr;
    80001c28:	00073503          	ld	a0,0(a4)
    head = head->next;
    80001c2c:	00873683          	ld	a3,8(a4)
    80001c30:	00d7b023          	sd	a3,0(a5)
    old->thr = nullptr;
    80001c34:	00073023          	sd	zero,0(a4)
    old->next = nullptr;
    80001c38:	00073423          	sd	zero,8(a4)
    Scheduler::numOfThreads--;
    80001c3c:	0087b703          	ld	a4,8(a5)
    80001c40:	fff70713          	addi	a4,a4,-1
    80001c44:	00e7b423          	sd	a4,8(a5)
    return thr;

}
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret

0000000080001c54 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *thr)
{
    80001c54:	fe010113          	addi	sp,sp,-32
    80001c58:	00113c23          	sd	ra,24(sp)
    80001c5c:	00813823          	sd	s0,16(sp)
    80001c60:	00913423          	sd	s1,8(sp)
    80001c64:	02010413          	addi	s0,sp,32
    80001c68:	00050493          	mv	s1,a0
        Elem* next;
        explicit Elem(TCB* thr) : thr(thr), next(nullptr){}

        void* operator new(size_t sz){
            sz = MemoryAllocator::allocateBytes(sz);
            return MemoryAllocator::kmalloc(sz);
    80001c6c:	00100513          	li	a0,1
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	f0c080e7          	jalr	-244(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
        explicit Elem(TCB* thr) : thr(thr), next(nullptr){}
    80001c78:	00953023          	sd	s1,0(a0)
    80001c7c:	00053423          	sd	zero,8(a0)
    //prazna lista
    Elem* e = new Elem (thr);
    if (head == nullptr){
    80001c80:	00008797          	auipc	a5,0x8
    80001c84:	5587b783          	ld	a5,1368(a5) # 8000a1d8 <_ZN9Scheduler4headE>
    80001c88:	04078063          	beqz	a5,80001cc8 <_ZN9Scheduler3putEP3TCB+0x74>
        head = tail = e;

    }else{
        tail->next = e;
    80001c8c:	00008797          	auipc	a5,0x8
    80001c90:	54c78793          	addi	a5,a5,1356 # 8000a1d8 <_ZN9Scheduler4headE>
    80001c94:	0107b703          	ld	a4,16(a5)
    80001c98:	00a73423          	sd	a0,8(a4)
        tail = e;
    80001c9c:	00a7b823          	sd	a0,16(a5)
    }
    Scheduler::numOfThreads++;
    80001ca0:	00008717          	auipc	a4,0x8
    80001ca4:	53870713          	addi	a4,a4,1336 # 8000a1d8 <_ZN9Scheduler4headE>
    80001ca8:	00873783          	ld	a5,8(a4)
    80001cac:	00178793          	addi	a5,a5,1
    80001cb0:	00f73423          	sd	a5,8(a4)
    80001cb4:	01813083          	ld	ra,24(sp)
    80001cb8:	01013403          	ld	s0,16(sp)
    80001cbc:	00813483          	ld	s1,8(sp)
    80001cc0:	02010113          	addi	sp,sp,32
    80001cc4:	00008067          	ret
        head = tail = e;
    80001cc8:	00008797          	auipc	a5,0x8
    80001ccc:	51078793          	addi	a5,a5,1296 # 8000a1d8 <_ZN9Scheduler4headE>
    80001cd0:	00a7b823          	sd	a0,16(a5)
    80001cd4:	00a7b023          	sd	a0,0(a5)
    80001cd8:	fc9ff06f          	j	80001ca0 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080001cdc <_Z4idlev>:

}

void idle(){

    if (Scheduler::numOfThreads == 2 && TCB::numActiveThreads > 3){
    80001cdc:	00008797          	auipc	a5,0x8
    80001ce0:	4a47b783          	ld	a5,1188(a5) # 8000a180 <_GLOBAL_OFFSET_TABLE_+0x98>
    80001ce4:	0007b703          	ld	a4,0(a5)
    80001ce8:	00200793          	li	a5,2
    80001cec:	00f71e63          	bne	a4,a5,80001d08 <_Z4idlev+0x2c>
    80001cf0:	00008797          	auipc	a5,0x8
    80001cf4:	4207b783          	ld	a5,1056(a5) # 8000a110 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cf8:	0007b703          	ld	a4,0(a5)
    80001cfc:	00300793          	li	a5,3
    80001d00:	00e7f463          	bgeu	a5,a4,80001d08 <_Z4idlev+0x2c>
        while(1){}
    80001d04:	0000006f          	j	80001d04 <_Z4idlev+0x28>
void idle(){
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00113423          	sd	ra,8(sp)
    80001d10:	00813023          	sd	s0,0(sp)
    80001d14:	01010413          	addi	s0,sp,16
    }else{
        TCB::yield();
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	abc080e7          	jalr	-1348(ra) # 800027d4 <_ZN3TCB5yieldEv>
    }
}
    80001d20:	00813083          	ld	ra,8(sp)
    80001d24:	00013403          	ld	s0,0(sp)
    80001d28:	01010113          	addi	sp,sp,16
    80001d2c:	00008067          	ret

0000000080001d30 <main>:

void userMain();

int main()
{
    80001d30:	fd010113          	addi	sp,sp,-48
    80001d34:	02113423          	sd	ra,40(sp)
    80001d38:	02813023          	sd	s0,32(sp)
    80001d3c:	00913c23          	sd	s1,24(sp)
    80001d40:	01213823          	sd	s2,16(sp)
    80001d44:	01313423          	sd	s3,8(sp)
    80001d48:	03010413          	addi	s0,sp,48
    heapSetup();
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	8fc080e7          	jalr	-1796(ra) # 80001648 <_Z9heapSetupv>
    //STEK
    uint64 stackSize = (DEFAULT_STACK_SIZE * 8 - 1)/MEM_BLOCK_SIZE + 1;

    kernelStack = (uint64*)MemoryAllocator::kmalloc(stackSize); //STEK PREKIDNE RUTINE
    80001d54:	20000513          	li	a0,512
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	e24080e7          	jalr	-476(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    kernelStack = (uint64*) &kernelStack[DEFAULT_STACK_SIZE - 1];
    80001d60:	00008937          	lui	s2,0x8
    80001d64:	ff890913          	addi	s2,s2,-8 # 7ff8 <_entry-0x7fff8008>
    80001d68:	01250533          	add	a0,a0,s2
    80001d6c:	00008797          	auipc	a5,0x8
    80001d70:	48a7b223          	sd	a0,1156(a5) # 8000a1f0 <kernelStack>

    uint64* kThreadStack = (uint64*)MemoryAllocator::kmalloc(stackSize); // STEK POSEBNE KERNEL NITI
    80001d74:	20000513          	li	a0,512
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	e04080e7          	jalr	-508(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    kThreadStack = (uint64*) &kThreadStack[DEFAULT_STACK_SIZE - 1];
    80001d80:	01250933          	add	s2,a0,s2

    uint64  sepc = (uint64)&supervisorTrap;
    80001d84:	00008797          	auipc	a5,0x8
    80001d88:	39c7b783          	ld	a5,924(a5) # 8000a120 <_GLOBAL_OFFSET_TABLE_+0x38>
    asm volatile ("csrw stvec, %0" : :"r" (sepc));
    80001d8c:	10579073          	csrw	stvec,a5
    sepc = 0x202UL;
    asm volatile ("csrw sie, %0" : :"r" (sepc));
    80001d90:	20200793          	li	a5,514
    80001d94:	10479073          	csrw	sie,a5
    TCB* startThread = TCB::createThread(nullptr);
    80001d98:	00000513          	li	a0,0
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	c84080e7          	jalr	-892(ra) # 80002a20 <_ZN3TCB12createThreadEPFvvE>
    80001da4:	00050993          	mv	s3,a0

    TCB* kernelThread = TCB::createThread(nullptr);
    80001da8:	00000513          	li	a0,0
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	c74080e7          	jalr	-908(ra) # 80002a20 <_ZN3TCB12createThreadEPFvvE>
    80001db4:	00050493          	mv	s1,a0
    void setKernelFlag(bool value) { kernelThreadFlag = value; }
    80001db8:	00100793          	li	a5,1
    80001dbc:	02f509a3          	sb	a5,51(a0)
    kernelThread->setKernelFlag(true); //razmisli dal je ok da koristi kernel stek
    kernelThread->savedRegs[1] = (uint64)TCB::kernelWrapper; //upisujem adresu fje
    80001dc0:	01053783          	ld	a5,16(a0)
    80001dc4:	00008717          	auipc	a4,0x8
    80001dc8:	39473703          	ld	a4,916(a4) # 8000a158 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001dcc:	00e7b423          	sd	a4,8(a5)
    kernelThread->savedRegs[2] = (uint64) kThreadStack;
    80001dd0:	01053783          	ld	a5,16(a0)
    80001dd4:	0127b823          	sd	s2,16(a5)
    kernelThread->userStack = kThreadStack;
    80001dd8:	01253423          	sd	s2,8(a0)

    TCB::kernelThread = kernelThread; //ne stavljam sad nego kad se desi prekid; ona je spremna
    80001ddc:	00008797          	auipc	a5,0x8
    80001de0:	36c7b783          	ld	a5,876(a5) # 8000a148 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001de4:	00a7b023          	sd	a0,0(a5)

    TCB::createThread(userMain);
    80001de8:	00008517          	auipc	a0,0x8
    80001dec:	30853503          	ld	a0,776(a0) # 8000a0f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	c30080e7          	jalr	-976(ra) # 80002a20 <_ZN3TCB12createThreadEPFvvE>

    //TCB* idleThread = TCB::createThread(idle); //VRATI IDLE NIT --->idleThread
    TCB::createThread(idle); //VRATI IDLE NIT --->idleThread
    80001df8:	00000517          	auipc	a0,0x0
    80001dfc:	ee450513          	addi	a0,a0,-284 # 80001cdc <_Z4idlev>
    80001e00:	00001097          	auipc	ra,0x1
    80001e04:	c20080e7          	jalr	-992(ra) # 80002a20 <_ZN3TCB12createThreadEPFvvE>
    Scheduler::put(kernelThread);
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	e48080e7          	jalr	-440(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
    TCB::running = startThread;
    80001e14:	00008797          	auipc	a5,0x8
    80001e18:	35c7b783          	ld	a5,860(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001e1c:	0137b023          	sd	s3,0(a5)

    while(TCB::numActiveThreads >= 4){
    80001e20:	00008797          	auipc	a5,0x8
    80001e24:	2f07b783          	ld	a5,752(a5) # 8000a110 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e28:	0007b703          	ld	a4,0(a5)
    80001e2c:	00300793          	li	a5,3
    80001e30:	00e7f863          	bgeu	a5,a4,80001e40 <main+0x110>
        TCB::yield();
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	9a0080e7          	jalr	-1632(ra) # 800027d4 <_ZN3TCB5yieldEv>
    while(TCB::numActiveThreads >= 4){
    80001e3c:	fe5ff06f          	j	80001e20 <main+0xf0>
    };

    //kConsole::sendChars();
    return 0;
}
    80001e40:	00000513          	li	a0,0
    80001e44:	02813083          	ld	ra,40(sp)
    80001e48:	02013403          	ld	s0,32(sp)
    80001e4c:	01813483          	ld	s1,24(sp)
    80001e50:	01013903          	ld	s2,16(sp)
    80001e54:	00813983          	ld	s3,8(sp)
    80001e58:	03010113          	addi	sp,sp,48
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN6Thread7wrapperEPv>:
//
#include "../h/syscall_cpp.hpp"


void Thread::wrapper(void* t){
    if(t) ((Thread*)t)->run();
    80001e60:	02050863          	beqz	a0,80001e90 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void* t){
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    if(t) ((Thread*)t)->run();
    80001e74:	00053783          	ld	a5,0(a0)
    80001e78:	0107b783          	ld	a5,16(a5)
    80001e7c:	000780e7          	jalr	a5

}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret
    80001e90:	00008067          	ret

0000000080001e94 <_ZN14PeriodicThread3runEv>:
{
    this->period = period;
}


void PeriodicThread::run(){
    80001e94:	fe010113          	addi	sp,sp,-32
    80001e98:	00113c23          	sd	ra,24(sp)
    80001e9c:	00813823          	sd	s0,16(sp)
    80001ea0:	00913423          	sd	s1,8(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0

    while(true){

        this->periodicActivation();
    80001eac:	0004b783          	ld	a5,0(s1)
    80001eb0:	0187b783          	ld	a5,24(a5)
    80001eb4:	00048513          	mv	a0,s1
    80001eb8:	000780e7          	jalr	a5

        time_sleep(period);
    80001ebc:	0104b503          	ld	a0,16(s1)
    80001ec0:	fffff097          	auipc	ra,0xfffff
    80001ec4:	548080e7          	jalr	1352(ra) # 80001408 <_Z10time_sleepm>
    while(true){
    80001ec8:	fe5ff06f          	j	80001eac <_ZN14PeriodicThread3runEv+0x18>

0000000080001ecc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001ecc:	fd010113          	addi	sp,sp,-48
    80001ed0:	02113423          	sd	ra,40(sp)
    80001ed4:	02813023          	sd	s0,32(sp)
    80001ed8:	00913c23          	sd	s1,24(sp)
    80001edc:	01213823          	sd	s2,16(sp)
    80001ee0:	01313423          	sd	s3,8(sp)
    80001ee4:	01413023          	sd	s4,0(sp)
    80001ee8:	03010413          	addi	s0,sp,48
    80001eec:	00050493          	mv	s1,a0
    80001ef0:	00058993          	mv	s3,a1
    80001ef4:	00060a13          	mv	s4,a2
    80001ef8:	00008797          	auipc	a5,0x8
    80001efc:	fe878793          	addi	a5,a5,-24 # 80009ee0 <_ZTV6Thread+0x10>
    80001f00:	00f53023          	sd	a5,0(a0)
    thread_t * handle = (thread_t*)MemoryAllocator::kmalloc(sizeof(thread_t));
    80001f04:	00800513          	li	a0,8
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	c74080e7          	jalr	-908(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    80001f10:	00050913          	mv	s2,a0
    thread_create(handle, body, arg);
    80001f14:	000a0613          	mv	a2,s4
    80001f18:	00098593          	mv	a1,s3
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	3d4080e7          	jalr	980(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    myHandle = *handle;
    80001f24:	00093783          	ld	a5,0(s2)
    80001f28:	00f4b423          	sd	a5,8(s1)
}
    80001f2c:	02813083          	ld	ra,40(sp)
    80001f30:	02013403          	ld	s0,32(sp)
    80001f34:	01813483          	ld	s1,24(sp)
    80001f38:	01013903          	ld	s2,16(sp)
    80001f3c:	00813983          	ld	s3,8(sp)
    80001f40:	00013a03          	ld	s4,0(sp)
    80001f44:	03010113          	addi	sp,sp,48
    80001f48:	00008067          	ret

0000000080001f4c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f5c:	fffff097          	auipc	ra,0xfffff
    80001f60:	3e4080e7          	jalr	996(ra) # 80001340 <_Z15thread_dispatchv>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN6Thread5startEv>:
   if(myHandle)
    80001f74:	00853783          	ld	a5,8(a0)
    80001f78:	00078663          	beqz	a5,80001f84 <_ZN6Thread5startEv+0x10>
       return 1;
    80001f7c:	00100513          	li	a0,1
}
    80001f80:	00008067          	ret
int Thread::start(){
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00113c23          	sd	ra,24(sp)
    80001f8c:	00813823          	sd	s0,16(sp)
    80001f90:	00913423          	sd	s1,8(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	00050493          	mv	s1,a0
       thread_t * handle = (thread_t*)MemoryAllocator::kmalloc(sizeof(thread_t));
    80001f9c:	00800513          	li	a0,8
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	bdc080e7          	jalr	-1060(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
       myHandle = *handle;
    80001fa8:	00053783          	ld	a5,0(a0)
    80001fac:	00f4b423          	sd	a5,8(s1)
       thread_create(handle, wrapper, this);
    80001fb0:	00048613          	mv	a2,s1
    80001fb4:	00000597          	auipc	a1,0x0
    80001fb8:	eac58593          	addi	a1,a1,-340 # 80001e60 <_ZN6Thread7wrapperEPv>
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	334080e7          	jalr	820(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
       return 0;
    80001fc4:	00000513          	li	a0,0
}
    80001fc8:	01813083          	ld	ra,24(sp)
    80001fcc:	01013403          	ld	s0,16(sp)
    80001fd0:	00813483          	ld	s1,8(sp)
    80001fd4:	02010113          	addi	sp,sp,32
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t t){
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    time_sleep(t);
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	41c080e7          	jalr	1052(ra) # 80001408 <_Z10time_sleepm>
};
    80001ff4:	00000513          	li	a0,0
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN6ThreadnwEm>:
void* Thread::operator new (size_t size){
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
    void* ptr = mem_alloc(size);
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	284080e7          	jalr	644(ra) # 8000129c <_Z9mem_allocm>
};
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZN6ThreaddlEPv>:
void Thread::operator delete (void* addr) noexcept{
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
    mem_free(addr);
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	288080e7          	jalr	648(ra) # 800012c8 <_Z8mem_freePv>
};
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    void operator delete (void* addr) noexcept;


    //static int sleep (time_t);
protected:
    Thread () : myHandle(nullptr){};
    80002064:	00053423          	sd	zero,8(a0)
    80002068:	00008797          	auipc	a5,0x8
    8000206c:	ec078793          	addi	a5,a5,-320 # 80009f28 <_ZTV14PeriodicThread+0x10>
    80002070:	00f53023          	sd	a5,0(a0)
    this->period = period;
    80002074:	00b53823          	sd	a1,16(a0)
}
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN9SemaphoreC1Ei>:

}



Semaphore::Semaphore(signed init) {
    80002084:	fd010113          	addi	sp,sp,-48
    80002088:	02113423          	sd	ra,40(sp)
    8000208c:	02813023          	sd	s0,32(sp)
    80002090:	00913c23          	sd	s1,24(sp)
    80002094:	01213823          	sd	s2,16(sp)
    80002098:	01313423          	sd	s3,8(sp)
    8000209c:	03010413          	addi	s0,sp,48
    800020a0:	00050493          	mv	s1,a0
    800020a4:	00058993          	mv	s3,a1
    800020a8:	00008797          	auipc	a5,0x8
    800020ac:	e6078793          	addi	a5,a5,-416 # 80009f08 <_ZTV9Semaphore+0x10>
    800020b0:	00f53023          	sd	a5,0(a0)

    sem_t* handle = (sem_t*)mem_alloc(sizeof(sem_t));
    800020b4:	00800513          	li	a0,8
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	1e4080e7          	jalr	484(ra) # 8000129c <_Z9mem_allocm>
    800020c0:	00050913          	mv	s2,a0

    sem_open(handle, init);
    800020c4:	00098593          	mv	a1,s3
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	298080e7          	jalr	664(ra) # 80001360 <_Z8sem_openPP10kSemaphorej>

    myHandle = *handle;
    800020d0:	00093783          	ld	a5,0(s2)
    800020d4:	00f4b423          	sd	a5,8(s1)
}
    800020d8:	02813083          	ld	ra,40(sp)
    800020dc:	02013403          	ld	s0,32(sp)
    800020e0:	01813483          	ld	s1,24(sp)
    800020e4:	01013903          	ld	s2,16(sp)
    800020e8:	00813983          	ld	s3,8(sp)
    800020ec:	03010113          	addi	sp,sp,48
    800020f0:	00008067          	ret

00000000800020f4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00113423          	sd	ra,8(sp)
    800020fc:	00813023          	sd	s0,0(sp)
    80002100:	01010413          	addi	s0,sp,16

    return sem_wait(myHandle);
    80002104:	00853503          	ld	a0,8(a0)
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	2b0080e7          	jalr	688(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>

}
    80002110:	00813083          	ld	ra,8(sp)
    80002114:	00013403          	ld	s0,0(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16

    return sem_signal(myHandle);
    80002130:	00853503          	ld	a0,8(a0)
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	2ac080e7          	jalr	684(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

}
    8000213c:	00813083          	ld	ra,8(sp)
    80002140:	00013403          	ld	s0,0(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <_ZN9SemaphorenwEm>:

void* Semaphore::operator new (size_t size){
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00113423          	sd	ra,8(sp)
    80002154:	00813023          	sd	s0,0(sp)
    80002158:	01010413          	addi	s0,sp,16

    void* ptr = mem_alloc(size);
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	140080e7          	jalr	320(ra) # 8000129c <_Z9mem_allocm>

    return ptr;
};
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN9SemaphoredlEPv>:
void Semaphore::operator delete (void* addr) noexcept{
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16

    mem_free(addr);
    80002184:	fffff097          	auipc	ra,0xfffff
    80002188:	144080e7          	jalr	324(ra) # 800012c8 <_Z8mem_freePv>

};
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN7Console4getcEv>:

char Console::getc() {
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00113423          	sd	ra,8(sp)
    800021a4:	00813023          	sd	s0,0(sp)
    800021a8:	01010413          	addi	s0,sp,16

    char c = ::getc();
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	284080e7          	jalr	644(ra) # 80001430 <_Z4getcv>

    return c;

}
    800021b4:	00813083          	ld	ra,8(sp)
    800021b8:	00013403          	ld	s0,0(sp)
    800021bc:	01010113          	addi	sp,sp,16
    800021c0:	00008067          	ret

00000000800021c4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800021c4:	ff010113          	addi	sp,sp,-16
    800021c8:	00113423          	sd	ra,8(sp)
    800021cc:	00813023          	sd	s0,0(sp)
    800021d0:	01010413          	addi	s0,sp,16

    ::putc(c);
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	280080e7          	jalr	640(ra) # 80001454 <_Z4putcc>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN6ThreadD1Ev>:
    virtual ~Thread (){};
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN6Thread3runEv>:
    virtual void run () {}
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_ZN14PeriodicThread18periodicActivationEv>:

protected:

    PeriodicThread (time_t period);

    virtual void periodicActivation () {}
    8000221c:	ff010113          	addi	sp,sp,-16
    80002220:	00813423          	sd	s0,8(sp)
    80002224:	01010413          	addi	s0,sp,16
    80002228:	00813403          	ld	s0,8(sp)
    8000222c:	01010113          	addi	sp,sp,16
    80002230:	00008067          	ret

0000000080002234 <_ZN9SemaphoreD1Ev>:


class Semaphore {
public:
    Semaphore (signed init = 1);
    virtual ~Semaphore (){};
    80002234:	ff010113          	addi	sp,sp,-16
    80002238:	00813423          	sd	s0,8(sp)
    8000223c:	01010413          	addi	s0,sp,16
    80002240:	00813403          	ld	s0,8(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00813423          	sd	s0,8(sp)
    80002254:	01010413          	addi	s0,sp,16
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_ZN6ThreadD0Ev>:
    virtual ~Thread (){};
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00113423          	sd	ra,8(sp)
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	01010413          	addi	s0,sp,16
    80002274:	00000097          	auipc	ra,0x0
    80002278:	dbc080e7          	jalr	-580(ra) # 80002030 <_ZN6ThreaddlEPv>
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_ZN14PeriodicThreadD0Ev>:
class PeriodicThread : public Thread {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	d94080e7          	jalr	-620(ra) # 80002030 <_ZN6ThreaddlEPv>
    800022a4:	00813083          	ld	ra,8(sp)
    800022a8:	00013403          	ld	s0,0(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZN9SemaphoreD0Ev>:
    virtual ~Semaphore (){};
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00113423          	sd	ra,8(sp)
    800022bc:	00813023          	sd	s0,0(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	eb0080e7          	jalr	-336(ra) # 80002174 <_ZN9SemaphoredlEPv>
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN5Riscv10popSppSpieEv>:
int main();

extern uint64* kernelStack;

void Riscv::popSppSpie()
{
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00813423          	sd	s0,8(sp)
    800022e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800022e8:	14109073          	csrw	sepc,ra
__asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
__asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800022ec:	10000793          	li	a5,256
    800022f0:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");
    800022f4:	10200073          	sret
}
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002304:	f8010113          	addi	sp,sp,-128
    80002308:	06113c23          	sd	ra,120(sp)
    8000230c:	06813823          	sd	s0,112(sp)
    80002310:	06913423          	sd	s1,104(sp)
    80002314:	08010413          	addi	s0,sp,128
__asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002318:	142027f3          	csrr	a5,scause
    8000231c:	f8f43823          	sd	a5,-112(s0)
return scause;
    80002320:	f9043783          	ld	a5,-112(s0)

    uint64 volatile scause = r_scause();
    80002324:	fcf43c23          	sd	a5,-40(s0)
    register uint64 arg1 asm("a1");
    register uint64 arg2 asm("a2");
    register uint64 arg3 asm("a3");


    TCB::running->sstatus = r_sstatus();
    80002328:	00008797          	auipc	a5,0x8
    8000232c:	e487b783          	ld	a5,-440(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002330:	0007b783          	ld	a5,0(a5)
}

inline uint64 Riscv::r_sstatus()
{
uint64 volatile sstatus;
__asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002334:	10002773          	csrr	a4,sstatus
    80002338:	f8e43423          	sd	a4,-120(s0)
return sstatus;
    8000233c:	f8843703          	ld	a4,-120(s0)
    80002340:	02e7b023          	sd	a4,32(a5)


    if(scause == 0x0000000000000008 || scause == 0x0000000000000009){
    80002344:	fd843703          	ld	a4,-40(s0)
    80002348:	00800793          	li	a5,8
    8000234c:	0af70c63          	beq	a4,a5,80002404 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
    80002350:	fd843703          	ld	a4,-40(s0)
    80002354:	00900793          	li	a5,9
    80002358:	0af70663          	beq	a4,a5,80002404 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
            asm("sd a0, 10*8(t1)");
        }

    }
    else if (scause == 0x8000000000000001UL)
    8000235c:	fd843703          	ld	a4,-40(s0)
    80002360:	fff00793          	li	a5,-1
    80002364:	03f79793          	slli	a5,a5,0x3f
    80002368:	00178793          	addi	a5,a5,1
    8000236c:	12f70663          	beq	a4,a5,80002498 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
            asm("sd a0, 10*8(t1)");
            TCB::running->setWaitingForInput(false);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80002370:	fd843703          	ld	a4,-40(s0)
    80002374:	fff00793          	li	a5,-1
    80002378:	03f79793          	slli	a5,a5,0x3f
    8000237c:	00978793          	addi	a5,a5,9
    80002380:	1cf70a63          	beq	a4,a5,80002554 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                thr->setBlocked(false);
                Scheduler::put(thr);
            }
        }

    }else if (scause == 0x0000000000000002UL){
    80002384:	fd843703          	ld	a4,-40(s0)
    80002388:	00200793          	li	a5,2
    8000238c:	24f70463          	beq	a4,a5,800025d4 <_ZN5Riscv20handleSupervisorTrapEv+0x2d0>
        TCB::running->sepc = r_sepc();
        printString("Illegal instruction\n");

    }else if (scause == 0x0000000000000005UL){
    80002390:	fd843703          	ld	a4,-40(s0)
    80002394:	00500793          	li	a5,5
    80002398:	26f70663          	beq	a4,a5,80002604 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
        TCB::running->sepc = r_sepc();

        printString("Nedozvoljena adresa citanja\n");

    }else if (scause == 0x0000000000000007UL){
    8000239c:	fd843703          	ld	a4,-40(s0)
    800023a0:	00700793          	li	a5,7
    800023a4:	28f70863          	beq	a4,a5,80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x330>
        TCB::running->sepc = r_sepc();
        printString("Nedozvoljena adresa upisa\n");

    }
    else {
        TCB::running->sepc = r_sepc();
    800023a8:	00008797          	auipc	a5,0x8
    800023ac:	dc87b783          	ld	a5,-568(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    800023b0:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023b4:	14102773          	csrr	a4,sepc
    800023b8:	fce43823          	sd	a4,-48(s0)
return sepc;
    800023bc:	fd043703          	ld	a4,-48(s0)
    800023c0:	00e7bc23          	sd	a4,24(a5)
        printString("Sta je ovo bre :(\n");
    800023c4:	00006517          	auipc	a0,0x6
    800023c8:	dc450513          	addi	a0,a0,-572 # 80008188 <CONSOLE_STATUS+0x178>
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	598080e7          	jalr	1432(ra) # 80001964 <_Z11printStringPKc>
__asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800023d4:	142027f3          	csrr	a5,scause
    800023d8:	fcf43423          	sd	a5,-56(s0)
return scause;
    800023dc:	fc843503          	ld	a0,-56(s0)
        uint64 x = Riscv::r_scause();
        printInt(x);
    800023e0:	00000613          	li	a2,0
    800023e4:	00a00593          	li	a1,10
    800023e8:	0005051b          	sext.w	a0,a0
    800023ec:	fffff097          	auipc	ra,0xfffff
    800023f0:	710080e7          	jalr	1808(ra) # 80001afc <_Z8printIntiii>
        __putc('\n');
    800023f4:	00a00513          	li	a0,10
    800023f8:	00005097          	auipc	ra,0x5
    800023fc:	cb4080e7          	jalr	-844(ra) # 800070ac <__putc>
    80002400:	0440006f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002404:	141027f3          	csrr	a5,sepc
    80002408:	f8f43c23          	sd	a5,-104(s0)
return sepc;
    8000240c:	f9843783          	ld	a5,-104(s0)
        TCB::running->sepc = r_sepc() + 4;
    80002410:	00008497          	auipc	s1,0x8
    80002414:	d604b483          	ld	s1,-672(s1) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002418:	0004b703          	ld	a4,0(s1)
    8000241c:	00478793          	addi	a5,a5,4
    80002420:	00f73c23          	sd	a5,24(a4)
        syscall_handler(arg0, arg1, arg2, arg3);
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	054080e7          	jalr	84(ra) # 80001478 <_Z15syscall_handlermmmm>
        if (TCB::running->isWaitingForInput()){
    8000242c:	0004b783          	ld	a5,0(s1)

    bool isAsleep() const { return asleep; }

    bool isKernelThread() const { return kernelThreadFlag; }

    bool isWaitingForInput() const { return waitingForInput; }
    80002430:	0347c703          	lbu	a4,52(a5)
    80002434:	04071063          	bnez	a4,80002474 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    80002438:	0107b783          	ld	a5,16(a5)
    8000243c:	00078313          	mv	t1,a5
            asm("sd a0, 10*8(t1)");
    80002440:	04a33823          	sd	a0,80(t1)

    }


    w_sepc(TCB::running->sepc);
    80002444:	00008797          	auipc	a5,0x8
    80002448:	d2c7b783          	ld	a5,-724(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000244c:	0007b783          	ld	a5,0(a5)
    80002450:	0187b703          	ld	a4,24(a5)
__asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002454:	14171073          	csrw	sepc,a4
    w_sstatus(TCB::running->sstatus);
    80002458:	0207b783          	ld	a5,32(a5)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
__asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000245c:	10079073          	csrw	sstatus,a5

}
    80002460:	07813083          	ld	ra,120(sp)
    80002464:	07013403          	ld	s0,112(sp)
    80002468:	06813483          	ld	s1,104(sp)
    8000246c:	08010113          	addi	sp,sp,128
    80002470:	00008067          	ret
            kConsole::getIB(); //trebalo bi da u a0 bude rez
    80002474:	00001097          	auipc	ra,0x1
    80002478:	9f4080e7          	jalr	-1548(ra) # 80002e68 <_ZN8kConsole5getIBEv>
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    8000247c:	0004b703          	ld	a4,0(s1)
    80002480:	01073703          	ld	a4,16(a4)
    80002484:	00070313          	mv	t1,a4
            asm("sd a0, 10*8(t1)");
    80002488:	04a33823          	sd	a0,80(t1)
            TCB::running->setWaitingForInput(false);
    8000248c:	0004b783          	ld	a5,0(s1)

    void setAsleep(bool value) { asleep = value; }

    void setKernelFlag(bool value) { kernelThreadFlag = value; }

    void setWaitingForInput(bool value) { waitingForInput = value; }
    80002490:	02078a23          	sb	zero,52(a5)
    80002494:	fb1ff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        TCB::running->sepc = r_sepc();
    80002498:	00008797          	auipc	a5,0x8
    8000249c:	cd87b783          	ld	a5,-808(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    800024a0:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024a4:	14102773          	csrr	a4,sepc
    800024a8:	fae43023          	sd	a4,-96(s0)
return sepc;
    800024ac:	fa043703          	ld	a4,-96(s0)
    800024b0:	00e7bc23          	sd	a4,24(a5)
__asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800024b4:	00200793          	li	a5,2
    800024b8:	1447b073          	csrc	sip,a5
        if (TCB::sleepHead != nullptr) TCB::wakeThread(); //budi niti ako ih ima
    800024bc:	00008797          	auipc	a5,0x8
    800024c0:	c847b783          	ld	a5,-892(a5) # 8000a140 <_GLOBAL_OFFSET_TABLE_+0x58>
    800024c4:	0007b783          	ld	a5,0(a5)
    800024c8:	00078663          	beqz	a5,800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	284080e7          	jalr	644(ra) # 80002750 <_ZN3TCB10wakeThreadEv>
        TCB::timeSliceCounter++;
    800024d4:	00008717          	auipc	a4,0x8
    800024d8:	c4473703          	ld	a4,-956(a4) # 8000a118 <_GLOBAL_OFFSET_TABLE_+0x30>
    800024dc:	00073783          	ld	a5,0(a4)
    800024e0:	00178793          	addi	a5,a5,1
    800024e4:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800024e8:	00008717          	auipc	a4,0x8
    800024ec:	c8873703          	ld	a4,-888(a4) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    800024f0:	00073703          	ld	a4,0(a4)

    uint64 getTimeSlice() const { return timeSlice; }
    800024f4:	02873703          	ld	a4,40(a4)
    800024f8:	04e7f263          	bgeu	a5,a4,8000253c <_ZN5Riscv20handleSupervisorTrapEv+0x238>
        if (TCB::running->isWaitingForInput()) {
    800024fc:	00008797          	auipc	a5,0x8
    80002500:	c747b783          	ld	a5,-908(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002504:	0007b783          	ld	a5,0(a5)
    bool isWaitingForInput() const { return waitingForInput; }
    80002508:	0347c783          	lbu	a5,52(a5)
    8000250c:	f2078ce3          	beqz	a5,80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
            kConsole::getIB(); //trebalo bi da u a0 bude rez
    80002510:	00001097          	auipc	ra,0x1
    80002514:	958080e7          	jalr	-1704(ra) # 80002e68 <_ZN8kConsole5getIBEv>
            asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    80002518:	00008797          	auipc	a5,0x8
    8000251c:	c587b783          	ld	a5,-936(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002520:	0007b703          	ld	a4,0(a5)
    80002524:	01073703          	ld	a4,16(a4)
    80002528:	00070313          	mv	t1,a4
            asm("sd a0, 10*8(t1)");
    8000252c:	04a33823          	sd	a0,80(t1)
            TCB::running->setWaitingForInput(false);
    80002530:	0007b783          	ld	a5,0(a5)
    void setWaitingForInput(bool value) { waitingForInput = value; }
    80002534:	02078a23          	sb	zero,52(a5)
    80002538:	f0dff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
            TCB::timeSliceCounter = 0;
    8000253c:	00008797          	auipc	a5,0x8
    80002540:	bdc7b783          	ld	a5,-1060(a5) # 8000a118 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002544:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	35c080e7          	jalr	860(ra) # 800028a4 <_ZN3TCB8dispatchEv>
    80002550:	fadff06f          	j	800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
        TCB::running->sepc = r_sepc();
    80002554:	00008797          	auipc	a5,0x8
    80002558:	c1c7b783          	ld	a5,-996(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000255c:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002560:	14102773          	csrr	a4,sepc
    80002564:	fae43423          	sd	a4,-88(s0)
return sepc;
    80002568:	fa843703          	ld	a4,-88(s0)
    8000256c:	00e7bc23          	sd	a4,24(a5)
        volatile int a = plic_claim();
    80002570:	00003097          	auipc	ra,0x3
    80002574:	2d4080e7          	jalr	724(ra) # 80005844 <plic_claim>
    80002578:	f8a42223          	sw	a0,-124(s0)
        if (a == CONSOLE_IRQ){
    8000257c:	f8442783          	lw	a5,-124(s0)
    80002580:	0007879b          	sext.w	a5,a5
    80002584:	00a00713          	li	a4,10
    80002588:	04e78063          	beq	a5,a4,800025c8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c4>
        plic_complete(a);
    8000258c:	f8442503          	lw	a0,-124(s0)
    80002590:	0005051b          	sext.w	a0,a0
    80002594:	00003097          	auipc	ra,0x3
    80002598:	2e8080e7          	jalr	744(ra) # 8000587c <plic_complete>
        if (kConsole::received){
    8000259c:	00008797          	auipc	a5,0x8
    800025a0:	b947b783          	ld	a5,-1132(a5) # 8000a130 <_GLOBAL_OFFSET_TABLE_+0x48>
    800025a4:	0007c783          	lbu	a5,0(a5)
    800025a8:	e8078ee3          	beqz	a5,80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
            if ((thr = kConsole::removeFirst())!= nullptr){
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	974080e7          	jalr	-1676(ra) # 80002f20 <_ZN8kConsole11removeFirstEv>
    800025b4:	e80508e3          	beqz	a0,80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
    void setBlocked(bool value) { blocked = value; }
    800025b8:	020508a3          	sb	zero,49(a0)
                Scheduler::put(thr);
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	698080e7          	jalr	1688(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
    800025c4:	e81ff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
            kConsole::receiveChars();
    800025c8:	00001097          	auipc	ra,0x1
    800025cc:	810080e7          	jalr	-2032(ra) # 80002dd8 <_ZN8kConsole12receiveCharsEv>
    800025d0:	fbdff06f          	j	8000258c <_ZN5Riscv20handleSupervisorTrapEv+0x288>
        TCB::running->sepc = r_sepc();
    800025d4:	00008797          	auipc	a5,0x8
    800025d8:	b9c7b783          	ld	a5,-1124(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    800025dc:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800025e0:	14102773          	csrr	a4,sepc
    800025e4:	fae43823          	sd	a4,-80(s0)
return sepc;
    800025e8:	fb043703          	ld	a4,-80(s0)
    800025ec:	00e7bc23          	sd	a4,24(a5)
        printString("Illegal instruction\n");
    800025f0:	00006517          	auipc	a0,0x6
    800025f4:	b4050513          	addi	a0,a0,-1216 # 80008130 <CONSOLE_STATUS+0x120>
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	36c080e7          	jalr	876(ra) # 80001964 <_Z11printStringPKc>
    80002600:	e45ff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        TCB::running->sepc = r_sepc();
    80002604:	00008797          	auipc	a5,0x8
    80002608:	b6c7b783          	ld	a5,-1172(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000260c:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002610:	14102773          	csrr	a4,sepc
    80002614:	fae43c23          	sd	a4,-72(s0)
return sepc;
    80002618:	fb843703          	ld	a4,-72(s0)
    8000261c:	00e7bc23          	sd	a4,24(a5)
        printString("Nedozvoljena adresa citanja\n");
    80002620:	00006517          	auipc	a0,0x6
    80002624:	b2850513          	addi	a0,a0,-1240 # 80008148 <CONSOLE_STATUS+0x138>
    80002628:	fffff097          	auipc	ra,0xfffff
    8000262c:	33c080e7          	jalr	828(ra) # 80001964 <_Z11printStringPKc>
    80002630:	e15ff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        TCB::running->sepc = r_sepc();
    80002634:	00008797          	auipc	a5,0x8
    80002638:	b3c7b783          	ld	a5,-1220(a5) # 8000a170 <_GLOBAL_OFFSET_TABLE_+0x88>
    8000263c:	0007b783          	ld	a5,0(a5)
__asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002640:	14102773          	csrr	a4,sepc
    80002644:	fce43023          	sd	a4,-64(s0)
return sepc;
    80002648:	fc043703          	ld	a4,-64(s0)
    8000264c:	00e7bc23          	sd	a4,24(a5)
        printString("Nedozvoljena adresa upisa\n");
    80002650:	00006517          	auipc	a0,0x6
    80002654:	b1850513          	addi	a0,a0,-1256 # 80008168 <CONSOLE_STATUS+0x158>
    80002658:	fffff097          	auipc	ra,0xfffff
    8000265c:	30c080e7          	jalr	780(ra) # 80001964 <_Z11printStringPKc>
    80002660:	de5ff06f          	j	80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x140>

0000000080002664 <_ZN3TCB11sleepThreadEm>:

uint64 TCB::numActiveThreads = 0;

void TCB::sleepThread(time_t waitTime){

    if(waitTime == 0) return;
    80002664:	00051463          	bnez	a0,8000266c <_ZN3TCB11sleepThreadEm+0x8>
    80002668:	00008067          	ret
void TCB::sleepThread(time_t waitTime){
    8000266c:	fe010113          	addi	sp,sp,-32
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	02010413          	addi	s0,sp,32
    80002680:	00050493          	mv	s1,a0

    SleepNode* temp = (SleepNode*) MemoryAllocator::kmalloc (MemoryAllocator::allocateBytes(sizeof(SleepNode)));
    80002684:	00100513          	li	a0,1
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	4f4080e7          	jalr	1268(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    80002690:	00050693          	mv	a3,a0
    temp->thr = TCB::running;
    80002694:	00008797          	auipc	a5,0x8
    80002698:	b6478793          	addi	a5,a5,-1180 # 8000a1f8 <_ZN3TCB7runningE>
    8000269c:	0007b703          	ld	a4,0(a5)
    800026a0:	00e53023          	sd	a4,0(a0)
    temp->relSleepTime = waitTime;
    800026a4:	00953423          	sd	s1,8(a0)
    temp->next = nullptr;
    800026a8:	00053823          	sd	zero,16(a0)
    void setAsleep(bool value) { asleep = value; }
    800026ac:	00100613          	li	a2,1
    800026b0:	02c70923          	sb	a2,50(a4)

    TCB::running->setAsleep(true);

    if (TCB::sleepHead == nullptr)
    800026b4:	0087b503          	ld	a0,8(a5)
    800026b8:	02050863          	beqz	a0,800026e8 <_ZN3TCB11sleepThreadEm+0x84>
        TCB::sleepHead = temp;
        return;
    }


    SleepNode* curr = TCB::sleepHead, *prev = nullptr;
    800026bc:	00050793          	mv	a5,a0
    800026c0:	00000593          	li	a1,0

    while(curr != nullptr && temp->relSleepTime > curr->relSleepTime){
    800026c4:	02078863          	beqz	a5,800026f4 <_ZN3TCB11sleepThreadEm+0x90>
    800026c8:	0086b703          	ld	a4,8(a3)
    800026cc:	0087b603          	ld	a2,8(a5)
    800026d0:	02e67263          	bgeu	a2,a4,800026f4 <_ZN3TCB11sleepThreadEm+0x90>
        prev = curr;
        temp->relSleepTime -= curr->relSleepTime;
    800026d4:	40c70733          	sub	a4,a4,a2
    800026d8:	00e6b423          	sd	a4,8(a3)
        prev = curr;
    800026dc:	00078593          	mv	a1,a5
        curr = curr->next;
    800026e0:	0107b783          	ld	a5,16(a5)
    while(curr != nullptr && temp->relSleepTime > curr->relSleepTime){
    800026e4:	fe1ff06f          	j	800026c4 <_ZN3TCB11sleepThreadEm+0x60>
        TCB::sleepHead = temp;
    800026e8:	00008797          	auipc	a5,0x8
    800026ec:	b0d7bc23          	sd	a3,-1256(a5) # 8000a200 <_ZN3TCB9sleepHeadE>
        return;
    800026f0:	0240006f          	j	80002714 <_ZN3TCB11sleepThreadEm+0xb0>
    }

    if (curr == nullptr){
    800026f4:	02078a63          	beqz	a5,80002728 <_ZN3TCB11sleepThreadEm+0xc4>
        prev->next = temp;
        return;
    }
    if(prev == nullptr){
    800026f8:	02058c63          	beqz	a1,80002730 <_ZN3TCB11sleepThreadEm+0xcc>
        temp->next = TCB::sleepHead;
        TCB::sleepHead = temp;
        return;
    }

    prev->next = temp;
    800026fc:	00d5b823          	sd	a3,16(a1)
    temp->next = curr;
    80002700:	00f6b823          	sd	a5,16(a3)
    curr->relSleepTime -= temp->relSleepTime;
    80002704:	0086b683          	ld	a3,8(a3)
    80002708:	0087b703          	ld	a4,8(a5)
    8000270c:	40d70733          	sub	a4,a4,a3
    80002710:	00e7b423          	sd	a4,8(a5)


}; //uspavljivanje niti odnosno dodavanje u red uspavanih
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	02010113          	addi	sp,sp,32
    80002724:	00008067          	ret
        prev->next = temp;
    80002728:	00d5b823          	sd	a3,16(a1)
        return;
    8000272c:	fe9ff06f          	j	80002714 <_ZN3TCB11sleepThreadEm+0xb0>
        TCB::sleepHead->relSleepTime -= temp->relSleepTime;
    80002730:	0086b703          	ld	a4,8(a3)
    80002734:	00853783          	ld	a5,8(a0)
    80002738:	40e787b3          	sub	a5,a5,a4
    8000273c:	00f53423          	sd	a5,8(a0)
        temp->next = TCB::sleepHead;
    80002740:	00a6b823          	sd	a0,16(a3)
        TCB::sleepHead = temp;
    80002744:	00008797          	auipc	a5,0x8
    80002748:	aad7be23          	sd	a3,-1348(a5) # 8000a200 <_ZN3TCB9sleepHeadE>
        return;
    8000274c:	fc9ff06f          	j	80002714 <_ZN3TCB11sleepThreadEm+0xb0>

0000000080002750 <_ZN3TCB10wakeThreadEv>:
void TCB::wakeThread(){



    //if(TCB::sleepHead > 0) TCB::sleepHead->relSleepTime--;
    TCB::sleepHead->relSleepTime--;
    80002750:	00008717          	auipc	a4,0x8
    80002754:	ab073703          	ld	a4,-1360(a4) # 8000a200 <_ZN3TCB9sleepHeadE>
    80002758:	00873783          	ld	a5,8(a4)
    8000275c:	fff78793          	addi	a5,a5,-1
    80002760:	00f73423          	sd	a5,8(a4)

    while(TCB::sleepHead != nullptr && TCB::sleepHead->relSleepTime == 0){
    80002764:	00008797          	auipc	a5,0x8
    80002768:	a9c7b783          	ld	a5,-1380(a5) # 8000a200 <_ZN3TCB9sleepHeadE>
    8000276c:	06078263          	beqz	a5,800027d0 <_ZN3TCB10wakeThreadEv+0x80>
    80002770:	0087b703          	ld	a4,8(a5)
    80002774:	04071e63          	bnez	a4,800027d0 <_ZN3TCB10wakeThreadEv+0x80>
void TCB::wakeThread(){
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	00813023          	sd	s0,0(sp)
    80002784:	01010413          	addi	s0,sp,16
    80002788:	00c0006f          	j	80002794 <_ZN3TCB10wakeThreadEv+0x44>
    while(TCB::sleepHead != nullptr && TCB::sleepHead->relSleepTime == 0){
    8000278c:	0087b703          	ld	a4,8(a5)
    80002790:	02071863          	bnez	a4,800027c0 <_ZN3TCB10wakeThreadEv+0x70>

        SleepNode* temp = TCB::sleepHead;
        TCB::sleepHead = TCB::sleepHead->next;
    80002794:	0107b703          	ld	a4,16(a5)
    80002798:	00008697          	auipc	a3,0x8
    8000279c:	a6e6b423          	sd	a4,-1432(a3) # 8000a200 <_ZN3TCB9sleepHeadE>

        temp->thr->setAsleep(false);//budimo je
    800027a0:	0007b703          	ld	a4,0(a5)
    800027a4:	02070923          	sb	zero,50(a4)
        Scheduler::put(temp->thr);
    800027a8:	0007b503          	ld	a0,0(a5)
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	4a8080e7          	jalr	1192(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
    while(TCB::sleepHead != nullptr && TCB::sleepHead->relSleepTime == 0){
    800027b4:	00008797          	auipc	a5,0x8
    800027b8:	a4c7b783          	ld	a5,-1460(a5) # 8000a200 <_ZN3TCB9sleepHeadE>
    800027bc:	fc0798e3          	bnez	a5,8000278c <_ZN3TCB10wakeThreadEv+0x3c>
    }



}; //probuditi nit; staviti je u Scheduler
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
    800027d0:	00008067          	ret

00000000800027d4 <_ZN3TCB5yieldEv>:
{
    return new TCB(body, DEFAULT_TIME_SLICE);
}


void TCB::yield(){
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00813423          	sd	s0,8(sp)
    800027dc:	01010413          	addi	s0,sp,16

    register uint64 code asm("a0") = 0x13;
    800027e0:	01300513          	li	a0,19

    //mislim da je dovoljan samo sistemski poziv ; nece se prepoznati u switchu ali ce se svakako izvrsiti dispatch()
    asm volatile ("ecall" :: "r"(code): "memory");
    800027e4:	00000073          	ecall



}
    800027e8:	00813403          	ld	s0,8(sp)
    800027ec:	01010113          	addi	sp,sp,16
    800027f0:	00008067          	ret

00000000800027f4 <_ZN3TCB13kernelWrapperEv>:

}



void TCB::kernelWrapper() {
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00113423          	sd	ra,8(sp)
    800027fc:	00813023          	sd	s0,0(sp)
    80002800:	01010413          	addi	s0,sp,16

    asm("mv t1, %0"::"r"(TCB::running->userStack));
    80002804:	00008797          	auipc	a5,0x8
    80002808:	9f47b783          	ld	a5,-1548(a5) # 8000a1f8 <_ZN3TCB7runningE>
    8000280c:	0087b783          	ld	a5,8(a5)
    80002810:	00078313          	mv	t1,a5
    asm("mv sp, t1"); //uvek ista vrednost
    80002814:	00030113          	mv	sp,t1
    //asm("ld sp, 2*8(t1)"); //uvek ista vrednost
    //pozove kernel fju za obradu prekida
    kConsole::sendChars(); //zavrsamo kad je bit spemnosti 0 ili kada u baferu nema vise podataka(sve poslali)
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	540080e7          	jalr	1344(ra) # 80002d58 <_ZN8kConsole9sendCharsEv>
    TCB::yield(); //vracamo kontekst nekoj drugoj niti; vrlo je bitno da U PR stalno postavljam ra za kernelThreadWrapper
    80002820:	00000097          	auipc	ra,0x0
    80002824:	fb4080e7          	jalr	-76(ra) # 800027d4 <_ZN3TCB5yieldEv>

};
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN3TCB13threadWrapperEv>:


void TCB::threadWrapper() {
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	02010413          	addi	s0,sp,32

    asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    8000284c:	00008497          	auipc	s1,0x8
    80002850:	9ac48493          	addi	s1,s1,-1620 # 8000a1f8 <_ZN3TCB7runningE>
    80002854:	0004b783          	ld	a5,0(s1)
    80002858:	0107b783          	ld	a5,16(a5)
    8000285c:	00078313          	mv	t1,a5
    asm("ld a0, 12*8(t1)"); //ovo bi trebalo da je argument ali;
    80002860:	06033503          	ld	a0,96(t1)
    asm("ld sp, 2*8(t1)");
    80002864:	01033103          	ld	sp,16(t1)

    Riscv::popSppSpie();
    80002868:	00000097          	auipc	ra,0x0
    8000286c:	a74080e7          	jalr	-1420(ra) # 800022dc <_ZN5Riscv10popSppSpieEv>
    running->body();
    80002870:	0004b783          	ld	a5,0(s1)
    80002874:	0007b783          	ld	a5,0(a5)
    80002878:	000780e7          	jalr	a5
    running->setFinished(true);
    8000287c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002880:	00100713          	li	a4,1
    80002884:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	f4c080e7          	jalr	-180(ra) # 800027d4 <_ZN3TCB5yieldEv>
}
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	02010113          	addi	sp,sp,32
    800028a0:	00008067          	ret

00000000800028a4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00113c23          	sd	ra,24(sp)
    800028ac:	00813823          	sd	s0,16(sp)
    800028b0:	00913423          	sd	s1,8(sp)
    800028b4:	01213023          	sd	s2,0(sp)
    800028b8:	02010413          	addi	s0,sp,32
    TCB* old = TCB::running;
    800028bc:	00008497          	auipc	s1,0x8
    800028c0:	93c4b483          	ld	s1,-1732(s1) # 8000a1f8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800028c4:	0304c783          	lbu	a5,48(s1)
    if(old->isFinished()) TCB::numActiveThreads--;
    800028c8:	00078c63          	beqz	a5,800028e0 <_ZN3TCB8dispatchEv+0x3c>
    800028cc:	00008697          	auipc	a3,0x8
    800028d0:	92c68693          	addi	a3,a3,-1748 # 8000a1f8 <_ZN3TCB7runningE>
    800028d4:	0106b703          	ld	a4,16(a3)
    800028d8:	fff70713          	addi	a4,a4,-1
    800028dc:	00e6b823          	sd	a4,16(a3)
    if(!old->isFinished() && !old->isBlocked() && !old->isAsleep()) Scheduler::put(old);
    800028e0:	00079a63          	bnez	a5,800028f4 <_ZN3TCB8dispatchEv+0x50>
    bool isBlocked() const { return blocked; }
    800028e4:	0314c783          	lbu	a5,49(s1)
    800028e8:	00079663          	bnez	a5,800028f4 <_ZN3TCB8dispatchEv+0x50>
    bool isAsleep() const { return asleep; }
    800028ec:	0324c783          	lbu	a5,50(s1)
    800028f0:	04078a63          	beqz	a5,80002944 <_ZN3TCB8dispatchEv+0xa0>
    TCB::running = Scheduler::get();
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	31c080e7          	jalr	796(ra) # 80001c10 <_ZN9Scheduler3getEv>
    800028fc:	00008917          	auipc	s2,0x8
    80002900:	8fc90913          	addi	s2,s2,-1796 # 8000a1f8 <_ZN3TCB7runningE>
    80002904:	00a93023          	sd	a0,0(s2)
    contextSwitch(old->savedRegs, running->savedRegs);
    80002908:	01053583          	ld	a1,16(a0)
    8000290c:	0104b503          	ld	a0,16(s1)
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	960080e7          	jalr	-1696(ra) # 80001270 <_ZN3TCB13contextSwitchEPmS0_>
    if (TCB::running->isKernelThread()){
    80002918:	00093783          	ld	a5,0(s2)
    bool isKernelThread() const { return kernelThreadFlag; }
    8000291c:	0337c783          	lbu	a5,51(a5)
    80002920:	02079a63          	bnez	a5,80002954 <_ZN3TCB8dispatchEv+0xb0>
    bool isFinished() const { return finished; }
    80002924:	0304c783          	lbu	a5,48(s1)
    if(old->isFinished()){
    80002928:	04079063          	bnez	a5,80002968 <_ZN3TCB8dispatchEv+0xc4>
}
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	00013903          	ld	s2,0(sp)
    8000293c:	02010113          	addi	sp,sp,32
    80002940:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isAsleep()) Scheduler::put(old);
    80002944:	00048513          	mv	a0,s1
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	30c080e7          	jalr	780(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
    80002950:	fa5ff06f          	j	800028f4 <_ZN3TCB8dispatchEv+0x50>
        contextSwitch((uint64*)kernelWrapper);
    80002954:	00000517          	auipc	a0,0x0
    80002958:	ea050513          	addi	a0,a0,-352 # 800027f4 <_ZN3TCB13kernelWrapperEv>
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	90c080e7          	jalr	-1780(ra) # 80001268 <_ZN3TCB13contextSwitchEPm>
    80002964:	fc1ff06f          	j	80002924 <_ZN3TCB8dispatchEv+0x80>
        MemoryAllocator::kfree(old->userStack);
    80002968:	0084b503          	ld	a0,8(s1)
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	29c080e7          	jalr	668(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
        MemoryAllocator::kfree(old->savedRegs);
    80002974:	0104b503          	ld	a0,16(s1)
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	290080e7          	jalr	656(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
        MemoryAllocator::kfree(old);
    80002980:	00048513          	mv	a0,s1
    80002984:	00000097          	auipc	ra,0x0
    80002988:	284080e7          	jalr	644(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    8000298c:	fa1ff06f          	j	8000292c <_ZN3TCB8dispatchEv+0x88>

0000000080002990 <_ZN3TCBnwEm>:



void* TCB::operator new (size_t n){
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00113423          	sd	ra,8(sp)
    80002998:	00813023          	sd	s0,0(sp)
    8000299c:	01010413          	addi	s0,sp,16

   static void* hStart;

   static void* hEnd;

   static uint64 allocateBytes(size_t size){ return (size - 1)/MEM_BLOCK_SIZE + 1; };
    800029a0:	fff50513          	addi	a0,a0,-1
    800029a4:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    800029a8:	00150513          	addi	a0,a0,1
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	1d0080e7          	jalr	464(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZN3TCBnaEm>:

void* TCB::operator new[] (size_t n){
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00113423          	sd	ra,8(sp)
    800029cc:	00813023          	sd	s0,0(sp)
    800029d0:	01010413          	addi	s0,sp,16
    800029d4:	fff50513          	addi	a0,a0,-1
    800029d8:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    800029dc:	00150513          	addi	a0,a0,1
    800029e0:	00000097          	auipc	ra,0x0
    800029e4:	19c080e7          	jalr	412(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    800029e8:	00813083          	ld	ra,8(sp)
    800029ec:	00013403          	ld	s0,0(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <_ZN3TCBdlEPv>:

void TCB::operator delete (void* p) noexcept
{
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00113423          	sd	ra,8(sp)
    80002a00:	00813023          	sd	s0,0(sp)
    80002a04:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	200080e7          	jalr	512(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN3TCB12createThreadEPFvvE>:
{
    80002a20:	fe010113          	addi	sp,sp,-32
    80002a24:	00113c23          	sd	ra,24(sp)
    80002a28:	00813823          	sd	s0,16(sp)
    80002a2c:	00913423          	sd	s1,8(sp)
    80002a30:	01213023          	sd	s2,0(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050913          	mv	s2,a0
    return new TCB(body, DEFAULT_TIME_SLICE);
    80002a3c:	03800513          	li	a0,56
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	f50080e7          	jalr	-176(ra) # 80002990 <_ZN3TCBnwEm>
    80002a48:	00050493          	mv	s1,a0

private:

    TCB(Body body, uint64 timeSlice)
    {
        this->body = body;
    80002a4c:	01253023          	sd	s2,0(a0)

        static uint64 stackSize = (DEFAULT_STACK_SIZE * 8 - 1)/MEM_BLOCK_SIZE + 1;
        this->userStack = (body != nullptr ? (uint64*)MemoryAllocator::kmalloc(stackSize) : nullptr); //userStek
    80002a50:	00090c63          	beqz	s2,80002a68 <_ZN3TCB12createThreadEPFvvE+0x48>
    80002a54:	00007517          	auipc	a0,0x7
    80002a58:	4f453503          	ld	a0,1268(a0) # 80009f48 <_ZZN3TCBC4EPFvvEmE9stackSize>
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	120080e7          	jalr	288(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    80002a64:	0080006f          	j	80002a6c <_ZN3TCB12createThreadEPFvvE+0x4c>
    80002a68:	00000513          	li	a0,0
    80002a6c:	00a4b423          	sd	a0,8(s1)

        uint64 n = (sizeof(uint64)* 32 - 1)/MEM_BLOCK_SIZE + 1;
        this->savedRegs = (uint64*)MemoryAllocator::kmalloc(n);
    80002a70:	00400513          	li	a0,4
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	108080e7          	jalr	264(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
    80002a7c:	00a4b823          	sd	a0,16(s1)
        if (body != nullptr ){
    80002a80:	02090463          	beqz	s2,80002aa8 <_ZN3TCB12createThreadEPFvvE+0x88>
            this->savedRegs[1] = (uint64)threadWrapper; //upisujem threadWrapper u ra = x1
    80002a84:	00000797          	auipc	a5,0x0
    80002a88:	db478793          	addi	a5,a5,-588 # 80002838 <_ZN3TCB13threadWrapperEv>
    80002a8c:	00f53423          	sd	a5,8(a0)
            this->savedRegs[2] = (uint64) &this->userStack[DEFAULT_STACK_SIZE - 1];
    80002a90:	0084b783          	ld	a5,8(s1)
    80002a94:	00008737          	lui	a4,0x8
    80002a98:	ff870713          	addi	a4,a4,-8 # 7ff8 <_entry-0x7fff8008>
    80002a9c:	00e787b3          	add	a5,a5,a4
    80002aa0:	0104b703          	ld	a4,16(s1)
    80002aa4:	00f73823          	sd	a5,16(a4)

        }

        this->finished = false;
    80002aa8:	02048823          	sb	zero,48(s1)
        this->blocked = false;
    80002aac:	020488a3          	sb	zero,49(s1)
        this->asleep = false;
    80002ab0:	02048923          	sb	zero,50(s1)
        //this->notUnblockedRegularly = false;
        this->kernelThreadFlag = false; // po defualt nit je korisnicka
    80002ab4:	020489a3          	sb	zero,51(s1)
        this->waitingForInput = false;
    80002ab8:	02048a23          	sb	zero,52(s1)

        if ( body != nullptr) {
    80002abc:	02090863          	beqz	s2,80002aec <_ZN3TCB12createThreadEPFvvE+0xcc>
            Scheduler::put(this);
    80002ac0:	00048513          	mv	a0,s1
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	190080e7          	jalr	400(ra) # 80001c54 <_ZN9Scheduler3putEP3TCB>
    80002acc:	0200006f          	j	80002aec <_ZN3TCB12createThreadEPFvvE+0xcc>
    80002ad0:	00050913          	mv	s2,a0
    80002ad4:	00048513          	mv	a0,s1
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	f20080e7          	jalr	-224(ra) # 800029f8 <_ZN3TCBdlEPv>
    80002ae0:	00090513          	mv	a0,s2
    80002ae4:	00009097          	auipc	ra,0x9
    80002ae8:	044080e7          	jalr	68(ra) # 8000bb28 <_Unwind_Resume>
        }
        this->sepc = 0;
    80002aec:	0004bc23          	sd	zero,24(s1)
        this->sstatus = 0;
    80002af0:	0204b023          	sd	zero,32(s1)
        this->timeSlice = timeSlice;
    80002af4:	00200793          	li	a5,2
    80002af8:	02f4b423          	sd	a5,40(s1)

        TCB::numActiveThreads++;
    80002afc:	00007717          	auipc	a4,0x7
    80002b00:	6fc70713          	addi	a4,a4,1788 # 8000a1f8 <_ZN3TCB7runningE>
    80002b04:	01073783          	ld	a5,16(a4)
    80002b08:	00178793          	addi	a5,a5,1
    80002b0c:	00f73823          	sd	a5,16(a4)
}
    80002b10:	00048513          	mv	a0,s1
    80002b14:	01813083          	ld	ra,24(sp)
    80002b18:	01013403          	ld	s0,16(sp)
    80002b1c:	00813483          	ld	s1,8(sp)
    80002b20:	00013903          	ld	s2,0(sp)
    80002b24:	02010113          	addi	sp,sp,32
    80002b28:	00008067          	ret

0000000080002b2c <_ZN3TCBdaEPv>:

void TCB::operator delete[] (void* p) noexcept
{
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	0cc080e7          	jalr	204(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN3TCB19kernelContextSwitchEv>:

void TCB::kernelContextSwitch(){
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    // u PCB trenutne niti upisujemo registre
    asm("mv t1, %0"::"r"(TCB::running->savedRegs));
    80002b60:	00007797          	auipc	a5,0x7
    80002b64:	6987b783          	ld	a5,1688(a5) # 8000a1f8 <_ZN3TCB7runningE>
    80002b68:	0107b783          	ld	a5,16(a5)
    80002b6c:	00078313          	mv	t1,a5
}
    80002b70:	00813403          	ld	s0,8(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret

0000000080002b7c <_ZN15MemoryAllocator7kmallocEm>:
void* MemoryAllocator::hEnd = nullptr;

//treba da se uradi alignment heap_starta i heap_enda...


void* MemoryAllocator::kmalloc(size_t size){
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00813423          	sd	s0,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
    80002b88:	00050713          	mv	a4,a0

    void* addr = nullptr; //pokazivac na alociranu memoriju
    BlockHeader* blk = MemoryAllocator::freeMemHead;
    80002b8c:	00007517          	auipc	a0,0x7
    80002b90:	69453503          	ld	a0,1684(a0) # 8000a220 <_ZN15MemoryAllocator11freeMemHeadE>
    for(;blk != nullptr && size > blk->size;blk = blk->next){}
    80002b94:	00050a63          	beqz	a0,80002ba8 <_ZN15MemoryAllocator7kmallocEm+0x2c>
    80002b98:	01053783          	ld	a5,16(a0)
    80002b9c:	00e7f663          	bgeu	a5,a4,80002ba8 <_ZN15MemoryAllocator7kmallocEm+0x2c>
    80002ba0:	00853503          	ld	a0,8(a0)
    80002ba4:	ff1ff06f          	j	80002b94 <_ZN15MemoryAllocator7kmallocEm+0x18>

    if (blk == nullptr){
    80002ba8:	02050463          	beqz	a0,80002bd0 <_ZN15MemoryAllocator7kmallocEm+0x54>
       return nullptr; // za sada
    }

    // ako je velcina bloka veca od potrebne za odredjenu velicinu uzimamo samo potrebno a vracamo visak
    if ((blk->size - size) >= (MEM_BLOCK_SIZE + sizeof(HiddenHeader))){
    80002bac:	01053783          	ld	a5,16(a0)
    80002bb0:	40e787b3          	sub	a5,a5,a4
    80002bb4:	04700693          	li	a3,71
    80002bb8:	02f6f263          	bgeu	a3,a5,80002bdc <_ZN15MemoryAllocator7kmallocEm+0x60>
        //uzimamo koliko nam treba; nema dodatnog ulancavanja blok ostaje na istoj poziciji samo sa modifikovanom velicinom
        addr = (void*)((uint64)blk + (blk->size - size)*MEM_BLOCK_SIZE); //razmisli za - 1
    80002bbc:	00679693          	slli	a3,a5,0x6
    80002bc0:	00d506b3          	add	a3,a0,a3
        blk ->size -= size; // azuriramo velicinu bloka
    80002bc4:	00f53823          	sd	a5,16(a0)
            //moze da se desi da je i blk->next = nullptr; onda imamo nullptr u freeMemHead
            MemoryAllocator::freeMemHead = blk->next;
        }
    }

    (*(HiddenHeader*)addr).size = size;
    80002bc8:	00e6b023          	sd	a4,0(a3)
    addr  = (void*)((uint64)addr + sizeof(HiddenHeader));
    80002bcc:	00868513          	addi	a0,a3,8
    return addr;
}
    80002bd0:	00813403          	ld	s0,8(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret
        if(blk->prev != nullptr){
    80002bdc:	00053783          	ld	a5,0(a0)
    80002be0:	00078a63          	beqz	a5,80002bf4 <_ZN15MemoryAllocator7kmallocEm+0x78>
            blk-> prev = blk->next;
    80002be4:	00853783          	ld	a5,8(a0)
    80002be8:	00f53023          	sd	a5,0(a0)
        addr = blk;
    80002bec:	00050693          	mv	a3,a0
    80002bf0:	fd9ff06f          	j	80002bc8 <_ZN15MemoryAllocator7kmallocEm+0x4c>
            MemoryAllocator::freeMemHead = blk->next;
    80002bf4:	00853783          	ld	a5,8(a0)
    80002bf8:	00007697          	auipc	a3,0x7
    80002bfc:	62f6b423          	sd	a5,1576(a3) # 8000a220 <_ZN15MemoryAllocator11freeMemHeadE>
        addr = blk;
    80002c00:	00050693          	mv	a3,a0
    80002c04:	fc5ff06f          	j	80002bc8 <_ZN15MemoryAllocator7kmallocEm+0x4c>

0000000080002c08 <_ZN15MemoryAllocator5kfreeEPv>:



int MemoryAllocator::kfree (void* addr){
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813423          	sd	s0,8(sp)
    80002c10:	01010413          	addi	s0,sp,16

    //uint64 blkStartDel = (uint64)addr;
    addr = (void*)((uint64)addr - sizeof(HiddenHeader));
    80002c14:	ff850693          	addi	a3,a0,-8
    //ako adresa nije poravnata na blok

    if ((char*)addr < MemoryAllocator::hStart || (char*)addr > MemoryAllocator::hEnd) return -1;
    80002c18:	00007797          	auipc	a5,0x7
    80002c1c:	6107b783          	ld	a5,1552(a5) # 8000a228 <_ZN15MemoryAllocator6hStartE>
    80002c20:	12f6e063          	bltu	a3,a5,80002d40 <_ZN15MemoryAllocator5kfreeEPv+0x138>
    80002c24:	00068713          	mv	a4,a3
    80002c28:	00007797          	auipc	a5,0x7
    80002c2c:	6087b783          	ld	a5,1544(a5) # 8000a230 <_ZN15MemoryAllocator4hEndE>
    80002c30:	10d7ec63          	bltu	a5,a3,80002d48 <_ZN15MemoryAllocator5kfreeEPv+0x140>
    //koliko memorije oslobadjamo
    size_t sz = ((HiddenHeader*)addr)->size;
    80002c34:	ff853783          	ld	a5,-8(a0)

    //pocetna inicijalizacija blockheader-a

    ((BlockHeader*)addr)->size = sz;
    80002c38:	00f6b823          	sd	a5,16(a3)
    ((BlockHeader*)addr)->next = ((BlockHeader*)addr)->prev = nullptr;
    80002c3c:	fe053c23          	sd	zero,-8(a0)
    80002c40:	0006b423          	sd	zero,8(a3)
    BlockHeader* blk = MemoryAllocator::freeMemHead;
    80002c44:	00007797          	auipc	a5,0x7
    80002c48:	5dc7b783          	ld	a5,1500(a5) # 8000a220 <_ZN15MemoryAllocator11freeMemHeadE>

    //dodavanje u listu
    if (MemoryAllocator::freeMemHead == nullptr)
    80002c4c:	04078c63          	beqz	a5,80002ca4 <_ZN15MemoryAllocator5kfreeEPv+0x9c>
        MemoryAllocator::freeMemHead = (BlockHeader*)addr;
    //ulancavamo na pocetak
    else if (MemoryAllocator::freeMemHead >= addr) {
    80002c50:	06d7e063          	bltu	a5,a3,80002cb0 <_ZN15MemoryAllocator5kfreeEPv+0xa8>
        ((BlockHeader*)addr)->next = MemoryAllocator::freeMemHead;
    80002c54:	00f6b423          	sd	a5,8(a3)
        ((BlockHeader*)addr)->next->prev = (BlockHeader*)addr;
    80002c58:	00d7b023          	sd	a3,0(a5)
        MemoryAllocator::freeMemHead = (BlockHeader*)addr;
    80002c5c:	00007797          	auipc	a5,0x7
    80002c60:	5cd7b223          	sd	a3,1476(a5) # 8000a220 <_ZN15MemoryAllocator11freeMemHeadE>
    blk = (BlockHeader*)addr;

  //provlem nastaje ovde; kao da ne vidi jos jedan alociran blk


    if (blk->prev != nullptr && (((uint64)blk->prev + (uint64)(blk->prev->size * MEM_BLOCK_SIZE)) == (uint64)blk)){
    80002c64:	ff853783          	ld	a5,-8(a0)
    80002c68:	00078a63          	beqz	a5,80002c7c <_ZN15MemoryAllocator5kfreeEPv+0x74>
    80002c6c:	0107b583          	ld	a1,16(a5)
    80002c70:	00659613          	slli	a2,a1,0x6
    80002c74:	00c78633          	add	a2,a5,a2
    80002c78:	06c68263          	beq	a3,a2,80002cdc <_ZN15MemoryAllocator5kfreeEPv+0xd4>
        blk = newBlk;
        //vise blok na adr adresi nije validan

    }
    //za desni blok
    if (blk->next != nullptr && (((uint64)blk + blk->size * MEM_BLOCK_SIZE)  == (uint64)blk->next)){
    80002c7c:	00873783          	ld	a5,8(a4)
    80002c80:	0c078863          	beqz	a5,80002d50 <_ZN15MemoryAllocator5kfreeEPv+0x148>
    80002c84:	01073603          	ld	a2,16(a4)
    80002c88:	00661693          	slli	a3,a2,0x6
    80002c8c:	00d706b3          	add	a3,a4,a3
    80002c90:	06f68e63          	beq	a3,a5,80002d0c <_ZN15MemoryAllocator5kfreeEPv+0x104>
        remove->next = remove->prev = nullptr;
        remove->size = 0;
    }

    //printString("Kaaj memfree\n");
    return 0;
    80002c94:	00000513          	li	a0,0
    80002c98:	00813403          	ld	s0,8(sp)
    80002c9c:	01010113          	addi	sp,sp,16
    80002ca0:	00008067          	ret
        MemoryAllocator::freeMemHead = (BlockHeader*)addr;
    80002ca4:	00007797          	auipc	a5,0x7
    80002ca8:	56d7be23          	sd	a3,1404(a5) # 8000a220 <_ZN15MemoryAllocator11freeMemHeadE>
    80002cac:	fb9ff06f          	j	80002c64 <_ZN15MemoryAllocator5kfreeEPv+0x5c>
        for (;blk->next != nullptr && (blk->next) < addr; blk = blk->next){}
    80002cb0:	00078613          	mv	a2,a5
    80002cb4:	0087b783          	ld	a5,8(a5)
    80002cb8:	00078463          	beqz	a5,80002cc0 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
    80002cbc:	fee7eae3          	bltu	a5,a4,80002cb0 <_ZN15MemoryAllocator5kfreeEPv+0xa8>
        ((BlockHeader*)addr)->next = blk->next;
    80002cc0:	00f6b423          	sd	a5,8(a3)
        ((BlockHeader*)addr)->prev = blk;
    80002cc4:	fec53c23          	sd	a2,-8(a0)
        if (blk->next != nullptr)
    80002cc8:	00863783          	ld	a5,8(a2)
    80002ccc:	00078463          	beqz	a5,80002cd4 <_ZN15MemoryAllocator5kfreeEPv+0xcc>
            (blk->next)->prev = (BlockHeader*)addr;
    80002cd0:	00d7b023          	sd	a3,0(a5)
        blk->next = (BlockHeader*)addr;
    80002cd4:	00d63423          	sd	a3,8(a2)
    80002cd8:	f8dff06f          	j	80002c64 <_ZN15MemoryAllocator5kfreeEPv+0x5c>
        newBlk->size += blk->size;
    80002cdc:	0106b703          	ld	a4,16(a3)
    80002ce0:	00e585b3          	add	a1,a1,a4
    80002ce4:	00b7b823          	sd	a1,16(a5)
        newBlk->next = blk->next;
    80002ce8:	0086b703          	ld	a4,8(a3)
    80002cec:	00e7b423          	sd	a4,8(a5)
        if (blk->next != nullptr) blk->next->prev = newBlk;
    80002cf0:	00070463          	beqz	a4,80002cf8 <_ZN15MemoryAllocator5kfreeEPv+0xf0>
    80002cf4:	00f73023          	sd	a5,0(a4)
        blk->size = 0;
    80002cf8:	0006b823          	sd	zero,16(a3)
        blk->next = blk-> prev = nullptr;
    80002cfc:	fe053c23          	sd	zero,-8(a0)
    80002d00:	0006b423          	sd	zero,8(a3)
        blk = newBlk;
    80002d04:	00078713          	mv	a4,a5
    80002d08:	f75ff06f          	j	80002c7c <_ZN15MemoryAllocator5kfreeEPv+0x74>
        blk->size += remove->size;
    80002d0c:	0107b683          	ld	a3,16(a5)
    80002d10:	00d60633          	add	a2,a2,a3
    80002d14:	00c73823          	sd	a2,16(a4)
        blk->next = remove->next;
    80002d18:	0087b683          	ld	a3,8(a5)
    80002d1c:	00d73423          	sd	a3,8(a4)
        if (remove->next != nullptr) remove->next->prev = blk;
    80002d20:	0087b683          	ld	a3,8(a5)
    80002d24:	00068463          	beqz	a3,80002d2c <_ZN15MemoryAllocator5kfreeEPv+0x124>
    80002d28:	00e6b023          	sd	a4,0(a3)
        remove->next = remove->prev = nullptr;
    80002d2c:	0007b023          	sd	zero,0(a5)
    80002d30:	0007b423          	sd	zero,8(a5)
        remove->size = 0;
    80002d34:	0007b823          	sd	zero,16(a5)
    return 0;
    80002d38:	00000513          	li	a0,0
    80002d3c:	f5dff06f          	j	80002c98 <_ZN15MemoryAllocator5kfreeEPv+0x90>
    if ((char*)addr < MemoryAllocator::hStart || (char*)addr > MemoryAllocator::hEnd) return -1;
    80002d40:	fff00513          	li	a0,-1
    80002d44:	f55ff06f          	j	80002c98 <_ZN15MemoryAllocator5kfreeEPv+0x90>
    80002d48:	fff00513          	li	a0,-1
    80002d4c:	f4dff06f          	j	80002c98 <_ZN15MemoryAllocator5kfreeEPv+0x90>
    return 0;
    80002d50:	00000513          	li	a0,0
    80002d54:	f45ff06f          	j	80002c98 <_ZN15MemoryAllocator5kfreeEPv+0x90>

0000000080002d58 <_ZN8kConsole9sendCharsEv>:
bool kConsole::received = false;




void kConsole::sendChars(){
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16


    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_TX_STATUS_BIT){
    80002d64:	00007797          	auipc	a5,0x7
    80002d68:	39c7b783          	ld	a5,924(a5) # 8000a100 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002d6c:	0007b783          	ld	a5,0(a5)
    80002d70:	0007c783          	lbu	a5,0(a5)
    80002d74:	0207f793          	andi	a5,a5,32
    80002d78:	04078a63          	beqz	a5,80002dcc <_ZN8kConsole9sendCharsEv+0x74>

        if (headOB == tailOB) return;
    80002d7c:	00007717          	auipc	a4,0x7
    80002d80:	4bc70713          	addi	a4,a4,1212 # 8000a238 <_ZN8kConsole6headOBE>
    80002d84:	00072783          	lw	a5,0(a4)
    80002d88:	00472703          	lw	a4,4(a4)
    80002d8c:	04e78063          	beq	a5,a4,80002dcc <_ZN8kConsole9sendCharsEv+0x74>
        char c = outputBuffer[headOB];
    80002d90:	00007717          	auipc	a4,0x7
    80002d94:	4a870713          	addi	a4,a4,1192 # 8000a238 <_ZN8kConsole6headOBE>
    80002d98:	00f707b3          	add	a5,a4,a5
    80002d9c:	0087c683          	lbu	a3,8(a5)
        *(char*)CONSOLE_TX_DATA = c;
    80002da0:	00007797          	auipc	a5,0x7
    80002da4:	3987b783          	ld	a5,920(a5) # 8000a138 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002da8:	0007b783          	ld	a5,0(a5)
    80002dac:	00d78023          	sb	a3,0(a5)
        headOB = (headOB + 1)%capacity;
    80002db0:	00072783          	lw	a5,0(a4)
    80002db4:	0017879b          	addiw	a5,a5,1
    80002db8:	00007697          	auipc	a3,0x7
    80002dbc:	1986a683          	lw	a3,408(a3) # 80009f50 <_ZN8kConsole8capacityE>
    80002dc0:	02d7e7bb          	remw	a5,a5,a3
    80002dc4:	00f72023          	sw	a5,0(a4)
    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_TX_STATUS_BIT){
    80002dc8:	f9dff06f          	j	80002d64 <_ZN8kConsole9sendCharsEv+0xc>


    };

}
    80002dcc:	00813403          	ld	s0,8(sp)
    80002dd0:	01010113          	addi	sp,sp,16
    80002dd4:	00008067          	ret

0000000080002dd8 <_ZN8kConsole12receiveCharsEv>:


void kConsole::receiveChars(){
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00813423          	sd	s0,8(sp)
    80002de0:	01010413          	addi	s0,sp,16

    received = false;
    80002de4:	00008797          	auipc	a5,0x8
    80002de8:	84078223          	sb	zero,-1980(a5) # 8000a628 <_ZN8kConsole8receivedE>
    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_RX_STATUS_BIT){
    80002dec:	00007797          	auipc	a5,0x7
    80002df0:	3147b783          	ld	a5,788(a5) # 8000a100 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002df4:	0007b783          	ld	a5,0(a5)
    80002df8:	0007c783          	lbu	a5,0(a5)
    80002dfc:	0017f793          	andi	a5,a5,1
    80002e00:	04078e63          	beqz	a5,80002e5c <_ZN8kConsole12receiveCharsEv+0x84>

        if((tailIB + 1)%capacity == headIB) return; //buffer full
    80002e04:	00007697          	auipc	a3,0x7
    80002e08:	43468693          	addi	a3,a3,1076 # 8000a238 <_ZN8kConsole6headOBE>
    80002e0c:	3f46a703          	lw	a4,1012(a3)
    80002e10:	0017079b          	addiw	a5,a4,1
    80002e14:	00007617          	auipc	a2,0x7
    80002e18:	13c62603          	lw	a2,316(a2) # 80009f50 <_ZN8kConsole8capacityE>
    80002e1c:	02c7e7bb          	remw	a5,a5,a2
    80002e20:	0007861b          	sext.w	a2,a5
    80002e24:	3f86a683          	lw	a3,1016(a3)
    80002e28:	02d60a63          	beq	a2,a3,80002e5c <_ZN8kConsole12receiveCharsEv+0x84>
        char c = *(char*)CONSOLE_RX_DATA;
    80002e2c:	00007697          	auipc	a3,0x7
    80002e30:	2cc6b683          	ld	a3,716(a3) # 8000a0f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e34:	0006b683          	ld	a3,0(a3)
    80002e38:	0006c603          	lbu	a2,0(a3)
        inputBuffer[tailIB] = c;
    80002e3c:	00007697          	auipc	a3,0x7
    80002e40:	3fc68693          	addi	a3,a3,1020 # 8000a238 <_ZN8kConsole6headOBE>
    80002e44:	00e68733          	add	a4,a3,a4
    80002e48:	40c70023          	sb	a2,1024(a4)
        tailIB = (tailIB + 1)%capacity;
    80002e4c:	3ef6aa23          	sw	a5,1012(a3)
        received = true;
    80002e50:	00100793          	li	a5,1
    80002e54:	3ef68823          	sb	a5,1008(a3)
    while(*(char*)CONSOLE_STATUS & (char)CONSOLE_RX_STATUS_BIT){
    80002e58:	f95ff06f          	j	80002dec <_ZN8kConsole12receiveCharsEv+0x14>

    };


}
    80002e5c:	00813403          	ld	s0,8(sp)
    80002e60:	01010113          	addi	sp,sp,16
    80002e64:	00008067          	ret

0000000080002e68 <_ZN8kConsole5getIBEv>:

//sta ako je prazan
char kConsole::getIB(){
    80002e68:	ff010113          	addi	sp,sp,-16
    80002e6c:	00813423          	sd	s0,8(sp)
    80002e70:	01010413          	addi	s0,sp,16

    if(headIB == tailIB) return 0;
    80002e74:	00007717          	auipc	a4,0x7
    80002e78:	3c470713          	addi	a4,a4,964 # 8000a238 <_ZN8kConsole6headOBE>
    80002e7c:	3f872783          	lw	a5,1016(a4)
    80002e80:	3f472703          	lw	a4,1012(a4)
    80002e84:	02e78a63          	beq	a5,a4,80002eb8 <_ZN8kConsole5getIBEv+0x50>
    char res = inputBuffer[headIB];
    80002e88:	00007717          	auipc	a4,0x7
    80002e8c:	3b070713          	addi	a4,a4,944 # 8000a238 <_ZN8kConsole6headOBE>
    80002e90:	00f706b3          	add	a3,a4,a5
    80002e94:	4006c503          	lbu	a0,1024(a3)
    headIB = (headIB + 1)% capacity;
    80002e98:	0017879b          	addiw	a5,a5,1
    80002e9c:	00007697          	auipc	a3,0x7
    80002ea0:	0b46a683          	lw	a3,180(a3) # 80009f50 <_ZN8kConsole8capacityE>
    80002ea4:	02d7e7bb          	remw	a5,a5,a3
    80002ea8:	3ef72c23          	sw	a5,1016(a4)
    return res;

}
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret
    if(headIB == tailIB) return 0;
    80002eb8:	00000513          	li	a0,0
    80002ebc:	ff1ff06f          	j	80002eac <_ZN8kConsole5getIBEv+0x44>

0000000080002ec0 <_ZN8kConsole5putOBEc>:



//prob kad he puno
int kConsole::putOB(char c) {
    80002ec0:	ff010113          	addi	sp,sp,-16
    80002ec4:	00813423          	sd	s0,8(sp)
    80002ec8:	01010413          	addi	s0,sp,16

    if ((tailOB + 1)%capacity == headOB) return 1; //GRESKA : NEMA MESTA
    80002ecc:	00007697          	auipc	a3,0x7
    80002ed0:	36c68693          	addi	a3,a3,876 # 8000a238 <_ZN8kConsole6headOBE>
    80002ed4:	0046a703          	lw	a4,4(a3)
    80002ed8:	0017079b          	addiw	a5,a4,1
    80002edc:	00007617          	auipc	a2,0x7
    80002ee0:	07462603          	lw	a2,116(a2) # 80009f50 <_ZN8kConsole8capacityE>
    80002ee4:	02c7e7bb          	remw	a5,a5,a2
    80002ee8:	0007861b          	sext.w	a2,a5
    80002eec:	0006a683          	lw	a3,0(a3)
    80002ef0:	02d60463          	beq	a2,a3,80002f18 <_ZN8kConsole5putOBEc+0x58>
    outputBuffer[tailOB] = c;
    80002ef4:	00007697          	auipc	a3,0x7
    80002ef8:	34468693          	addi	a3,a3,836 # 8000a238 <_ZN8kConsole6headOBE>
    80002efc:	00e68733          	add	a4,a3,a4
    80002f00:	00a70423          	sb	a0,8(a4)
    tailOB = (tailOB + 1)%capacity;
    80002f04:	00f6a223          	sw	a5,4(a3)
    return 0; //Stavili smo sve u redu !
    80002f08:	00000513          	li	a0,0
}
    80002f0c:	00813403          	ld	s0,8(sp)
    80002f10:	01010113          	addi	sp,sp,16
    80002f14:	00008067          	ret
    if ((tailOB + 1)%capacity == headOB) return 1; //GRESKA : NEMA MESTA
    80002f18:	00100513          	li	a0,1
    80002f1c:	ff1ff06f          	j	80002f0c <_ZN8kConsole5putOBEc+0x4c>

0000000080002f20 <_ZN8kConsole11removeFirstEv>:

TCB* kConsole::removeFirst()
{
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00813423          	sd	s0,8(sp)
    80002f28:	01010413          	addi	s0,sp,16
    Node* old = head;
    80002f2c:	00008797          	auipc	a5,0x8
    80002f30:	af47b783          	ld	a5,-1292(a5) # 8000aa20 <_ZN8kConsole4headE>
    if(old != nullptr){
    80002f34:	02078463          	beqz	a5,80002f5c <_ZN8kConsole11removeFirstEv+0x3c>
        TCB* thr = head->thr;
    80002f38:	0007b503          	ld	a0,0(a5)
        head = head->next;
    80002f3c:	0087b703          	ld	a4,8(a5)
    80002f40:	00008697          	auipc	a3,0x8
    80002f44:	aee6b023          	sd	a4,-1312(a3) # 8000aa20 <_ZN8kConsole4headE>
        old->thr = nullptr;
    80002f48:	0007b023          	sd	zero,0(a5)
        old->next = nullptr;
    80002f4c:	0007b423          	sd	zero,8(a5)
        //delete old;
        return thr;

    }else return nullptr;

}
    80002f50:	00813403          	ld	s0,8(sp)
    80002f54:	01010113          	addi	sp,sp,16
    80002f58:	00008067          	ret
    }else return nullptr;
    80002f5c:	00078513          	mv	a0,a5
    80002f60:	ff1ff06f          	j	80002f50 <_ZN8kConsole11removeFirstEv+0x30>

0000000080002f64 <_ZN8kConsole7addLastEP3TCB>:

void kConsole::addLast(TCB *thr)
{
    80002f64:	fe010113          	addi	sp,sp,-32
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00813823          	sd	s0,16(sp)
    80002f70:	00913423          	sd	s1,8(sp)
    80002f74:	02010413          	addi	s0,sp,32
    80002f78:	00050493          	mv	s1,a0
        Node* next;
        explicit Node(TCB* thr) : thr(thr), next(nullptr){}

        void* operator new(size_t sz){
            sz = MemoryAllocator::allocateBytes(sz);
            return MemoryAllocator::kmalloc(sz);
    80002f7c:	00100513          	li	a0,1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	bfc080e7          	jalr	-1028(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
        explicit Node(TCB* thr) : thr(thr), next(nullptr){}
    80002f88:	00953023          	sd	s1,0(a0)
    80002f8c:	00053423          	sd	zero,8(a0)
    //prazna lista
    Node* n = new Node (thr);
    if (head == nullptr){
    80002f90:	00008797          	auipc	a5,0x8
    80002f94:	a907b783          	ld	a5,-1392(a5) # 8000aa20 <_ZN8kConsole4headE>
    80002f98:	02078663          	beqz	a5,80002fc4 <_ZN8kConsole7addLastEP3TCB+0x60>
        head = tail = n;

    }else{
        tail->next = n;
    80002f9c:	00007797          	auipc	a5,0x7
    80002fa0:	29c78793          	addi	a5,a5,668 # 8000a238 <_ZN8kConsole6headOBE>
    80002fa4:	7f07b703          	ld	a4,2032(a5)
    80002fa8:	00a73423          	sd	a0,8(a4)
        tail = n;
    80002fac:	7ea7b823          	sd	a0,2032(a5)
    }
}
    80002fb0:	01813083          	ld	ra,24(sp)
    80002fb4:	01013403          	ld	s0,16(sp)
    80002fb8:	00813483          	ld	s1,8(sp)
    80002fbc:	02010113          	addi	sp,sp,32
    80002fc0:	00008067          	ret
        head = tail = n;
    80002fc4:	00007797          	auipc	a5,0x7
    80002fc8:	27478793          	addi	a5,a5,628 # 8000a238 <_ZN8kConsole6headOBE>
    80002fcc:	7ea7b823          	sd	a0,2032(a5)
    80002fd0:	7ea7b423          	sd	a0,2024(a5)
    80002fd4:	fddff06f          	j	80002fb0 <_ZN8kConsole7addLastEP3TCB+0x4c>

0000000080002fd8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002fd8:	fd010113          	addi	sp,sp,-48
    80002fdc:	02113423          	sd	ra,40(sp)
    80002fe0:	02813023          	sd	s0,32(sp)
    80002fe4:	00913c23          	sd	s1,24(sp)
    80002fe8:	01213823          	sd	s2,16(sp)
    80002fec:	01313423          	sd	s3,8(sp)
    80002ff0:	03010413          	addi	s0,sp,48
    80002ff4:	00050493          	mv	s1,a0
    80002ff8:	00058913          	mv	s2,a1
    80002ffc:	0015879b          	addiw	a5,a1,1
    80003000:	0007851b          	sext.w	a0,a5
    80003004:	00f4a023          	sw	a5,0(s1)
    80003008:	0004a823          	sw	zero,16(s1)
    8000300c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003010:	00251513          	slli	a0,a0,0x2
    80003014:	ffffe097          	auipc	ra,0xffffe
    80003018:	288080e7          	jalr	648(ra) # 8000129c <_Z9mem_allocm>
    8000301c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003020:	01000513          	li	a0,16
    80003024:	fffff097          	auipc	ra,0xfffff
    80003028:	128080e7          	jalr	296(ra) # 8000214c <_ZN9SemaphorenwEm>
    8000302c:	00050993          	mv	s3,a0
    80003030:	00000593          	li	a1,0
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	050080e7          	jalr	80(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    8000303c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003040:	01000513          	li	a0,16
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	108080e7          	jalr	264(ra) # 8000214c <_ZN9SemaphorenwEm>
    8000304c:	00050993          	mv	s3,a0
    80003050:	00090593          	mv	a1,s2
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	030080e7          	jalr	48(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    8000305c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003060:	01000513          	li	a0,16
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	0e8080e7          	jalr	232(ra) # 8000214c <_ZN9SemaphorenwEm>
    8000306c:	00050913          	mv	s2,a0
    80003070:	00100593          	li	a1,1
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	010080e7          	jalr	16(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    8000307c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003080:	01000513          	li	a0,16
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	0c8080e7          	jalr	200(ra) # 8000214c <_ZN9SemaphorenwEm>
    8000308c:	00050913          	mv	s2,a0
    80003090:	00100593          	li	a1,1
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	ff0080e7          	jalr	-16(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    8000309c:	0324b823          	sd	s2,48(s1)
}
    800030a0:	02813083          	ld	ra,40(sp)
    800030a4:	02013403          	ld	s0,32(sp)
    800030a8:	01813483          	ld	s1,24(sp)
    800030ac:	01013903          	ld	s2,16(sp)
    800030b0:	00813983          	ld	s3,8(sp)
    800030b4:	03010113          	addi	sp,sp,48
    800030b8:	00008067          	ret
    800030bc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800030c0:	00098513          	mv	a0,s3
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	0b0080e7          	jalr	176(ra) # 80002174 <_ZN9SemaphoredlEPv>
    800030cc:	00048513          	mv	a0,s1
    800030d0:	00009097          	auipc	ra,0x9
    800030d4:	a58080e7          	jalr	-1448(ra) # 8000bb28 <_Unwind_Resume>
    800030d8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800030dc:	00098513          	mv	a0,s3
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	094080e7          	jalr	148(ra) # 80002174 <_ZN9SemaphoredlEPv>
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00009097          	auipc	ra,0x9
    800030f0:	a3c080e7          	jalr	-1476(ra) # 8000bb28 <_Unwind_Resume>
    800030f4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800030f8:	00090513          	mv	a0,s2
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	078080e7          	jalr	120(ra) # 80002174 <_ZN9SemaphoredlEPv>
    80003104:	00048513          	mv	a0,s1
    80003108:	00009097          	auipc	ra,0x9
    8000310c:	a20080e7          	jalr	-1504(ra) # 8000bb28 <_Unwind_Resume>
    80003110:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003114:	00090513          	mv	a0,s2
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	05c080e7          	jalr	92(ra) # 80002174 <_ZN9SemaphoredlEPv>
    80003120:	00048513          	mv	a0,s1
    80003124:	00009097          	auipc	ra,0x9
    80003128:	a04080e7          	jalr	-1532(ra) # 8000bb28 <_Unwind_Resume>

000000008000312c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	01213023          	sd	s2,0(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	00050493          	mv	s1,a0
    80003148:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000314c:	01853503          	ld	a0,24(a0)
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	fa4080e7          	jalr	-92(ra) # 800020f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003158:	0304b503          	ld	a0,48(s1)
    8000315c:	fffff097          	auipc	ra,0xfffff
    80003160:	f98080e7          	jalr	-104(ra) # 800020f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003164:	0084b783          	ld	a5,8(s1)
    80003168:	0144a703          	lw	a4,20(s1)
    8000316c:	00271713          	slli	a4,a4,0x2
    80003170:	00e787b3          	add	a5,a5,a4
    80003174:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003178:	0144a783          	lw	a5,20(s1)
    8000317c:	0017879b          	addiw	a5,a5,1
    80003180:	0004a703          	lw	a4,0(s1)
    80003184:	02e7e7bb          	remw	a5,a5,a4
    80003188:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000318c:	0304b503          	ld	a0,48(s1)
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	f90080e7          	jalr	-112(ra) # 80002120 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003198:	0204b503          	ld	a0,32(s1)
    8000319c:	fffff097          	auipc	ra,0xfffff
    800031a0:	f84080e7          	jalr	-124(ra) # 80002120 <_ZN9Semaphore6signalEv>

}
    800031a4:	01813083          	ld	ra,24(sp)
    800031a8:	01013403          	ld	s0,16(sp)
    800031ac:	00813483          	ld	s1,8(sp)
    800031b0:	00013903          	ld	s2,0(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret

00000000800031bc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800031bc:	fe010113          	addi	sp,sp,-32
    800031c0:	00113c23          	sd	ra,24(sp)
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	01213023          	sd	s2,0(sp)
    800031d0:	02010413          	addi	s0,sp,32
    800031d4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800031d8:	02053503          	ld	a0,32(a0)
    800031dc:	fffff097          	auipc	ra,0xfffff
    800031e0:	f18080e7          	jalr	-232(ra) # 800020f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800031e4:	0284b503          	ld	a0,40(s1)
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	f0c080e7          	jalr	-244(ra) # 800020f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800031f0:	0084b703          	ld	a4,8(s1)
    800031f4:	0104a783          	lw	a5,16(s1)
    800031f8:	00279693          	slli	a3,a5,0x2
    800031fc:	00d70733          	add	a4,a4,a3
    80003200:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003204:	0017879b          	addiw	a5,a5,1
    80003208:	0004a703          	lw	a4,0(s1)
    8000320c:	02e7e7bb          	remw	a5,a5,a4
    80003210:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003214:	0284b503          	ld	a0,40(s1)
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	f08080e7          	jalr	-248(ra) # 80002120 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003220:	0184b503          	ld	a0,24(s1)
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	efc080e7          	jalr	-260(ra) # 80002120 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000322c:	00090513          	mv	a0,s2
    80003230:	01813083          	ld	ra,24(sp)
    80003234:	01013403          	ld	s0,16(sp)
    80003238:	00813483          	ld	s1,8(sp)
    8000323c:	00013903          	ld	s2,0(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret

0000000080003248 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003248:	fe010113          	addi	sp,sp,-32
    8000324c:	00113c23          	sd	ra,24(sp)
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	01213023          	sd	s2,0(sp)
    8000325c:	02010413          	addi	s0,sp,32
    80003260:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003264:	02853503          	ld	a0,40(a0)
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	e8c080e7          	jalr	-372(ra) # 800020f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003270:	0304b503          	ld	a0,48(s1)
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	e80080e7          	jalr	-384(ra) # 800020f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000327c:	0144a783          	lw	a5,20(s1)
    80003280:	0104a903          	lw	s2,16(s1)
    80003284:	0327ce63          	blt	a5,s2,800032c0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003288:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000328c:	0304b503          	ld	a0,48(s1)
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	e90080e7          	jalr	-368(ra) # 80002120 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003298:	0284b503          	ld	a0,40(s1)
    8000329c:	fffff097          	auipc	ra,0xfffff
    800032a0:	e84080e7          	jalr	-380(ra) # 80002120 <_ZN9Semaphore6signalEv>

    return ret;
}
    800032a4:	00090513          	mv	a0,s2
    800032a8:	01813083          	ld	ra,24(sp)
    800032ac:	01013403          	ld	s0,16(sp)
    800032b0:	00813483          	ld	s1,8(sp)
    800032b4:	00013903          	ld	s2,0(sp)
    800032b8:	02010113          	addi	sp,sp,32
    800032bc:	00008067          	ret
        ret = cap - head + tail;
    800032c0:	0004a703          	lw	a4,0(s1)
    800032c4:	4127093b          	subw	s2,a4,s2
    800032c8:	00f9093b          	addw	s2,s2,a5
    800032cc:	fc1ff06f          	j	8000328c <_ZN9BufferCPP6getCntEv+0x44>

00000000800032d0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	02010413          	addi	s0,sp,32
    800032e4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800032e8:	00a00513          	li	a0,10
    800032ec:	fffff097          	auipc	ra,0xfffff
    800032f0:	ed8080e7          	jalr	-296(ra) # 800021c4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800032f4:	00005517          	auipc	a0,0x5
    800032f8:	eac50513          	addi	a0,a0,-340 # 800081a0 <CONSOLE_STATUS+0x190>
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	668080e7          	jalr	1640(ra) # 80001964 <_Z11printStringPKc>
    while (getCnt()) {
    80003304:	00048513          	mv	a0,s1
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	f40080e7          	jalr	-192(ra) # 80003248 <_ZN9BufferCPP6getCntEv>
    80003310:	02050c63          	beqz	a0,80003348 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003314:	0084b783          	ld	a5,8(s1)
    80003318:	0104a703          	lw	a4,16(s1)
    8000331c:	00271713          	slli	a4,a4,0x2
    80003320:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003324:	0007c503          	lbu	a0,0(a5)
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	e9c080e7          	jalr	-356(ra) # 800021c4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003330:	0104a783          	lw	a5,16(s1)
    80003334:	0017879b          	addiw	a5,a5,1
    80003338:	0004a703          	lw	a4,0(s1)
    8000333c:	02e7e7bb          	remw	a5,a5,a4
    80003340:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003344:	fc1ff06f          	j	80003304 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003348:	02100513          	li	a0,33
    8000334c:	fffff097          	auipc	ra,0xfffff
    80003350:	e78080e7          	jalr	-392(ra) # 800021c4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003354:	00a00513          	li	a0,10
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	e6c080e7          	jalr	-404(ra) # 800021c4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003360:	0084b503          	ld	a0,8(s1)
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	f64080e7          	jalr	-156(ra) # 800012c8 <_Z8mem_freePv>
    delete itemAvailable;
    8000336c:	0204b503          	ld	a0,32(s1)
    80003370:	00050863          	beqz	a0,80003380 <_ZN9BufferCPPD1Ev+0xb0>
    80003374:	00053783          	ld	a5,0(a0)
    80003378:	0087b783          	ld	a5,8(a5)
    8000337c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003380:	0184b503          	ld	a0,24(s1)
    80003384:	00050863          	beqz	a0,80003394 <_ZN9BufferCPPD1Ev+0xc4>
    80003388:	00053783          	ld	a5,0(a0)
    8000338c:	0087b783          	ld	a5,8(a5)
    80003390:	000780e7          	jalr	a5
    delete mutexTail;
    80003394:	0304b503          	ld	a0,48(s1)
    80003398:	00050863          	beqz	a0,800033a8 <_ZN9BufferCPPD1Ev+0xd8>
    8000339c:	00053783          	ld	a5,0(a0)
    800033a0:	0087b783          	ld	a5,8(a5)
    800033a4:	000780e7          	jalr	a5
    delete mutexHead;
    800033a8:	0284b503          	ld	a0,40(s1)
    800033ac:	00050863          	beqz	a0,800033bc <_ZN9BufferCPPD1Ev+0xec>
    800033b0:	00053783          	ld	a5,0(a0)
    800033b4:	0087b783          	ld	a5,8(a5)
    800033b8:	000780e7          	jalr	a5
}
    800033bc:	01813083          	ld	ra,24(sp)
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	00813483          	ld	s1,8(sp)
    800033c8:	02010113          	addi	sp,sp,32
    800033cc:	00008067          	ret

00000000800033d0 <_ZN9BufferCPPnwEm>:


void* BufferCPP::operator new (size_t n){
    800033d0:	ff010113          	addi	sp,sp,-16
    800033d4:	00113423          	sd	ra,8(sp)
    800033d8:	00813023          	sd	s0,0(sp)
    800033dc:	01010413          	addi	s0,sp,16

   static void* hStart;

   static void* hEnd;

   static uint64 allocateBytes(size_t size){ return (size - 1)/MEM_BLOCK_SIZE + 1; };
    800033e0:	fff50513          	addi	a0,a0,-1
    800033e4:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    800033e8:	00150513          	addi	a0,a0,1
    800033ec:	fffff097          	auipc	ra,0xfffff
    800033f0:	790080e7          	jalr	1936(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    800033f4:	00813083          	ld	ra,8(sp)
    800033f8:	00013403          	ld	s0,0(sp)
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <_ZN9BufferCPPnaEm>:

void* BufferCPP::operator new[] (size_t n){
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00113423          	sd	ra,8(sp)
    8000340c:	00813023          	sd	s0,0(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	fff50513          	addi	a0,a0,-1
    80003418:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    8000341c:	00150513          	addi	a0,a0,1
    80003420:	fffff097          	auipc	ra,0xfffff
    80003424:	75c080e7          	jalr	1884(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    80003428:	00813083          	ld	ra,8(sp)
    8000342c:	00013403          	ld	s0,0(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <_ZN9BufferCPPdlEPv>:
void BufferCPP::operator delete (void* p) noexcept
{
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
MemoryAllocator::kfree(p);
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	7c0080e7          	jalr	1984(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN9BufferCPPdaEPv>:
void BufferCPP::operator delete[] (void* p) noexcept
{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
MemoryAllocator::kfree(p);
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	798080e7          	jalr	1944(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_Z9sleepyRunPv>:

#include "../h/printing.hpp"

bool finished[9];

void sleepyRun(void *arg) {
    80003488:	fe010113          	addi	sp,sp,-32
    8000348c:	00113c23          	sd	ra,24(sp)
    80003490:	00813823          	sd	s0,16(sp)
    80003494:	00913423          	sd	s1,8(sp)
    80003498:	01213023          	sd	s2,0(sp)
    8000349c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800034a0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800034a4:	00600493          	li	s1,6
    while (--i > 0) {
    800034a8:	fff4849b          	addiw	s1,s1,-1
    800034ac:	04905463          	blez	s1,800034f4 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    800034b0:	00005517          	auipc	a0,0x5
    800034b4:	d0850513          	addi	a0,a0,-760 # 800081b8 <CONSOLE_STATUS+0x1a8>
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	4ac080e7          	jalr	1196(ra) # 80001964 <_Z11printStringPKc>
        printInt(sleep_time);
    800034c0:	00000613          	li	a2,0
    800034c4:	00a00593          	li	a1,10
    800034c8:	0009051b          	sext.w	a0,s2
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	630080e7          	jalr	1584(ra) # 80001afc <_Z8printIntiii>
        printString(" !\n");
    800034d4:	00005517          	auipc	a0,0x5
    800034d8:	cec50513          	addi	a0,a0,-788 # 800081c0 <CONSOLE_STATUS+0x1b0>
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	488080e7          	jalr	1160(ra) # 80001964 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800034e4:	00090513          	mv	a0,s2
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	f20080e7          	jalr	-224(ra) # 80001408 <_Z10time_sleepm>
    while (--i > 0) {
    800034f0:	fb9ff06f          	j	800034a8 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800034f4:	00a00793          	li	a5,10
    800034f8:	02f95933          	divu	s2,s2,a5
    800034fc:	fff90913          	addi	s2,s2,-1
    80003500:	00007797          	auipc	a5,0x7
    80003504:	53078793          	addi	a5,a5,1328 # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
    80003508:	01278933          	add	s2,a5,s2
    8000350c:	00100793          	li	a5,1
    80003510:	00f90423          	sb	a5,8(s2)
}
    80003514:	01813083          	ld	ra,24(sp)
    80003518:	01013403          	ld	s0,16(sp)
    8000351c:	00813483          	ld	s1,8(sp)
    80003520:	00013903          	ld	s2,0(sp)
    80003524:	02010113          	addi	sp,sp,32
    80003528:	00008067          	ret

000000008000352c <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00113c23          	sd	ra,24(sp)
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	01213023          	sd	s2,0(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003548:	00100793          	li	a5,1
    8000354c:	02a7f863          	bgeu	a5,a0,8000357c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003550:	00a00793          	li	a5,10
    80003554:	02f577b3          	remu	a5,a0,a5
    80003558:	02078e63          	beqz	a5,80003594 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000355c:	fff48513          	addi	a0,s1,-1
    80003560:	00000097          	auipc	ra,0x0
    80003564:	fcc080e7          	jalr	-52(ra) # 8000352c <_Z9fibonaccim>
    80003568:	00050913          	mv	s2,a0
    8000356c:	ffe48513          	addi	a0,s1,-2
    80003570:	00000097          	auipc	ra,0x0
    80003574:	fbc080e7          	jalr	-68(ra) # 8000352c <_Z9fibonaccim>
    80003578:	00a90533          	add	a0,s2,a0
}
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	00813483          	ld	s1,8(sp)
    80003588:	00013903          	ld	s2,0(sp)
    8000358c:	02010113          	addi	sp,sp,32
    80003590:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	dac080e7          	jalr	-596(ra) # 80001340 <_Z15thread_dispatchv>
    8000359c:	fc1ff06f          	j	8000355c <_Z9fibonaccim+0x30>

00000000800035a0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035a0:	fe010113          	addi	sp,sp,-32
    800035a4:	00113c23          	sd	ra,24(sp)
    800035a8:	00813823          	sd	s0,16(sp)
    800035ac:	00913423          	sd	s1,8(sp)
    800035b0:	01213023          	sd	s2,0(sp)
    800035b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035b8:	00000913          	li	s2,0
    800035bc:	0380006f          	j	800035f4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	d80080e7          	jalr	-640(ra) # 80001340 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035c8:	00148493          	addi	s1,s1,1
    800035cc:	000027b7          	lui	a5,0x2
    800035d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035d4:	0097ee63          	bltu	a5,s1,800035f0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035d8:	00000713          	li	a4,0
    800035dc:	000077b7          	lui	a5,0x7
    800035e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035e4:	fce7eee3          	bltu	a5,a4,800035c0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800035e8:	00170713          	addi	a4,a4,1
    800035ec:	ff1ff06f          	j	800035dc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800035f0:	00190913          	addi	s2,s2,1
    800035f4:	00900793          	li	a5,9
    800035f8:	0527e063          	bltu	a5,s2,80003638 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800035fc:	00005517          	auipc	a0,0x5
    80003600:	bcc50513          	addi	a0,a0,-1076 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	360080e7          	jalr	864(ra) # 80001964 <_Z11printStringPKc>
    8000360c:	00000613          	li	a2,0
    80003610:	00a00593          	li	a1,10
    80003614:	0009051b          	sext.w	a0,s2
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	4e4080e7          	jalr	1252(ra) # 80001afc <_Z8printIntiii>
    80003620:	00005517          	auipc	a0,0x5
    80003624:	cd850513          	addi	a0,a0,-808 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	33c080e7          	jalr	828(ra) # 80001964 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003630:	00000493          	li	s1,0
    80003634:	f99ff06f          	j	800035cc <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003638:	00005517          	auipc	a0,0x5
    8000363c:	b9850513          	addi	a0,a0,-1128 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80003640:	ffffe097          	auipc	ra,0xffffe
    80003644:	324080e7          	jalr	804(ra) # 80001964 <_Z11printStringPKc>
    finishedA = true;
    80003648:	00100793          	li	a5,1
    8000364c:	00007717          	auipc	a4,0x7
    80003650:	3ef70aa3          	sb	a5,1013(a4) # 8000aa41 <finishedA>
}
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	00013903          	ld	s2,0(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret

000000008000366c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000366c:	fe010113          	addi	sp,sp,-32
    80003670:	00113c23          	sd	ra,24(sp)
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	01213023          	sd	s2,0(sp)
    80003680:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003684:	00000913          	li	s2,0
    80003688:	0380006f          	j	800036c0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	cb4080e7          	jalr	-844(ra) # 80001340 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003694:	00148493          	addi	s1,s1,1
    80003698:	000027b7          	lui	a5,0x2
    8000369c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036a0:	0097ee63          	bltu	a5,s1,800036bc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036a4:	00000713          	li	a4,0
    800036a8:	000077b7          	lui	a5,0x7
    800036ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036b0:	fce7eee3          	bltu	a5,a4,8000368c <_ZN7WorkerB11workerBodyBEPv+0x20>
    800036b4:	00170713          	addi	a4,a4,1
    800036b8:	ff1ff06f          	j	800036a8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036bc:	00190913          	addi	s2,s2,1
    800036c0:	00f00793          	li	a5,15
    800036c4:	0527e063          	bltu	a5,s2,80003704 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036c8:	00005517          	auipc	a0,0x5
    800036cc:	b1850513          	addi	a0,a0,-1256 # 800081e0 <CONSOLE_STATUS+0x1d0>
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	294080e7          	jalr	660(ra) # 80001964 <_Z11printStringPKc>
    800036d8:	00000613          	li	a2,0
    800036dc:	00a00593          	li	a1,10
    800036e0:	0009051b          	sext.w	a0,s2
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	418080e7          	jalr	1048(ra) # 80001afc <_Z8printIntiii>
    800036ec:	00005517          	auipc	a0,0x5
    800036f0:	c0c50513          	addi	a0,a0,-1012 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	270080e7          	jalr	624(ra) # 80001964 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036fc:	00000493          	li	s1,0
    80003700:	f99ff06f          	j	80003698 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003704:	00005517          	auipc	a0,0x5
    80003708:	ae450513          	addi	a0,a0,-1308 # 800081e8 <CONSOLE_STATUS+0x1d8>
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	258080e7          	jalr	600(ra) # 80001964 <_Z11printStringPKc>
    finishedB = true;
    80003714:	00100793          	li	a5,1
    80003718:	00007717          	auipc	a4,0x7
    8000371c:	32f70523          	sb	a5,810(a4) # 8000aa42 <finishedB>
    thread_dispatch();
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	c20080e7          	jalr	-992(ra) # 80001340 <_Z15thread_dispatchv>
}
    80003728:	01813083          	ld	ra,24(sp)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	00013903          	ld	s2,0(sp)
    80003738:	02010113          	addi	sp,sp,32
    8000373c:	00008067          	ret

0000000080003740 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003740:	fe010113          	addi	sp,sp,-32
    80003744:	00113c23          	sd	ra,24(sp)
    80003748:	00813823          	sd	s0,16(sp)
    8000374c:	00913423          	sd	s1,8(sp)
    80003750:	01213023          	sd	s2,0(sp)
    80003754:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003758:	00000493          	li	s1,0
    8000375c:	0400006f          	j	8000379c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003760:	00005517          	auipc	a0,0x5
    80003764:	a9850513          	addi	a0,a0,-1384 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	1fc080e7          	jalr	508(ra) # 80001964 <_Z11printStringPKc>
    80003770:	00000613          	li	a2,0
    80003774:	00a00593          	li	a1,10
    80003778:	00048513          	mv	a0,s1
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	380080e7          	jalr	896(ra) # 80001afc <_Z8printIntiii>
    80003784:	00005517          	auipc	a0,0x5
    80003788:	b7450513          	addi	a0,a0,-1164 # 800082f8 <CONSOLE_STATUS+0x2e8>
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	1d8080e7          	jalr	472(ra) # 80001964 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003794:	0014849b          	addiw	s1,s1,1
    80003798:	0ff4f493          	andi	s1,s1,255
    8000379c:	00200793          	li	a5,2
    800037a0:	fc97f0e3          	bgeu	a5,s1,80003760 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037a4:	00005517          	auipc	a0,0x5
    800037a8:	a5c50513          	addi	a0,a0,-1444 # 80008200 <CONSOLE_STATUS+0x1f0>
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	1b8080e7          	jalr	440(ra) # 80001964 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037b4:	00700313          	li	t1,7
    thread_dispatch();
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	b88080e7          	jalr	-1144(ra) # 80001340 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037c0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800037c4:	00005517          	auipc	a0,0x5
    800037c8:	a4c50513          	addi	a0,a0,-1460 # 80008210 <CONSOLE_STATUS+0x200>
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	198080e7          	jalr	408(ra) # 80001964 <_Z11printStringPKc>
    800037d4:	00000613          	li	a2,0
    800037d8:	00a00593          	li	a1,10
    800037dc:	0009051b          	sext.w	a0,s2
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	31c080e7          	jalr	796(ra) # 80001afc <_Z8printIntiii>
    800037e8:	00005517          	auipc	a0,0x5
    800037ec:	b1050513          	addi	a0,a0,-1264 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	174080e7          	jalr	372(ra) # 80001964 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800037f8:	00c00513          	li	a0,12
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	d30080e7          	jalr	-720(ra) # 8000352c <_Z9fibonaccim>
    80003804:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003808:	00005517          	auipc	a0,0x5
    8000380c:	a1050513          	addi	a0,a0,-1520 # 80008218 <CONSOLE_STATUS+0x208>
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	154080e7          	jalr	340(ra) # 80001964 <_Z11printStringPKc>
    80003818:	00000613          	li	a2,0
    8000381c:	00a00593          	li	a1,10
    80003820:	0009051b          	sext.w	a0,s2
    80003824:	ffffe097          	auipc	ra,0xffffe
    80003828:	2d8080e7          	jalr	728(ra) # 80001afc <_Z8printIntiii>
    8000382c:	00005517          	auipc	a0,0x5
    80003830:	acc50513          	addi	a0,a0,-1332 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	130080e7          	jalr	304(ra) # 80001964 <_Z11printStringPKc>
    8000383c:	0400006f          	j	8000387c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003840:	00005517          	auipc	a0,0x5
    80003844:	9b850513          	addi	a0,a0,-1608 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	11c080e7          	jalr	284(ra) # 80001964 <_Z11printStringPKc>
    80003850:	00000613          	li	a2,0
    80003854:	00a00593          	li	a1,10
    80003858:	00048513          	mv	a0,s1
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	2a0080e7          	jalr	672(ra) # 80001afc <_Z8printIntiii>
    80003864:	00005517          	auipc	a0,0x5
    80003868:	a9450513          	addi	a0,a0,-1388 # 800082f8 <CONSOLE_STATUS+0x2e8>
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	0f8080e7          	jalr	248(ra) # 80001964 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003874:	0014849b          	addiw	s1,s1,1
    80003878:	0ff4f493          	andi	s1,s1,255
    8000387c:	00500793          	li	a5,5
    80003880:	fc97f0e3          	bgeu	a5,s1,80003840 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003884:	00005517          	auipc	a0,0x5
    80003888:	94c50513          	addi	a0,a0,-1716 # 800081d0 <CONSOLE_STATUS+0x1c0>
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	0d8080e7          	jalr	216(ra) # 80001964 <_Z11printStringPKc>
    finishedC = true;
    80003894:	00100793          	li	a5,1
    80003898:	00007717          	auipc	a4,0x7
    8000389c:	1af705a3          	sb	a5,427(a4) # 8000aa43 <finishedC>
    thread_dispatch();
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	aa0080e7          	jalr	-1376(ra) # 80001340 <_Z15thread_dispatchv>
}
    800038a8:	01813083          	ld	ra,24(sp)
    800038ac:	01013403          	ld	s0,16(sp)
    800038b0:	00813483          	ld	s1,8(sp)
    800038b4:	00013903          	ld	s2,0(sp)
    800038b8:	02010113          	addi	sp,sp,32
    800038bc:	00008067          	ret

00000000800038c0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	00813823          	sd	s0,16(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	01213023          	sd	s2,0(sp)
    800038d4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800038d8:	00a00493          	li	s1,10
    800038dc:	0400006f          	j	8000391c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800038e0:	00005517          	auipc	a0,0x5
    800038e4:	94850513          	addi	a0,a0,-1720 # 80008228 <CONSOLE_STATUS+0x218>
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	07c080e7          	jalr	124(ra) # 80001964 <_Z11printStringPKc>
    800038f0:	00000613          	li	a2,0
    800038f4:	00a00593          	li	a1,10
    800038f8:	00048513          	mv	a0,s1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	200080e7          	jalr	512(ra) # 80001afc <_Z8printIntiii>
    80003904:	00005517          	auipc	a0,0x5
    80003908:	9f450513          	addi	a0,a0,-1548 # 800082f8 <CONSOLE_STATUS+0x2e8>
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	058080e7          	jalr	88(ra) # 80001964 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003914:	0014849b          	addiw	s1,s1,1
    80003918:	0ff4f493          	andi	s1,s1,255
    8000391c:	00c00793          	li	a5,12
    80003920:	fc97f0e3          	bgeu	a5,s1,800038e0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003924:	00005517          	auipc	a0,0x5
    80003928:	90c50513          	addi	a0,a0,-1780 # 80008230 <CONSOLE_STATUS+0x220>
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	038080e7          	jalr	56(ra) # 80001964 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003934:	00500313          	li	t1,5
    thread_dispatch();
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	a08080e7          	jalr	-1528(ra) # 80001340 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003940:	01000513          	li	a0,16
    80003944:	00000097          	auipc	ra,0x0
    80003948:	be8080e7          	jalr	-1048(ra) # 8000352c <_Z9fibonaccim>
    8000394c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003950:	00005517          	auipc	a0,0x5
    80003954:	8f050513          	addi	a0,a0,-1808 # 80008240 <CONSOLE_STATUS+0x230>
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	00c080e7          	jalr	12(ra) # 80001964 <_Z11printStringPKc>
    80003960:	00000613          	li	a2,0
    80003964:	00a00593          	li	a1,10
    80003968:	0009051b          	sext.w	a0,s2
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	190080e7          	jalr	400(ra) # 80001afc <_Z8printIntiii>
    80003974:	00005517          	auipc	a0,0x5
    80003978:	98450513          	addi	a0,a0,-1660 # 800082f8 <CONSOLE_STATUS+0x2e8>
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	fe8080e7          	jalr	-24(ra) # 80001964 <_Z11printStringPKc>
    80003984:	0400006f          	j	800039c4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003988:	00005517          	auipc	a0,0x5
    8000398c:	8a050513          	addi	a0,a0,-1888 # 80008228 <CONSOLE_STATUS+0x218>
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	fd4080e7          	jalr	-44(ra) # 80001964 <_Z11printStringPKc>
    80003998:	00000613          	li	a2,0
    8000399c:	00a00593          	li	a1,10
    800039a0:	00048513          	mv	a0,s1
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	158080e7          	jalr	344(ra) # 80001afc <_Z8printIntiii>
    800039ac:	00005517          	auipc	a0,0x5
    800039b0:	94c50513          	addi	a0,a0,-1716 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800039b4:	ffffe097          	auipc	ra,0xffffe
    800039b8:	fb0080e7          	jalr	-80(ra) # 80001964 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800039bc:	0014849b          	addiw	s1,s1,1
    800039c0:	0ff4f493          	andi	s1,s1,255
    800039c4:	00f00793          	li	a5,15
    800039c8:	fc97f0e3          	bgeu	a5,s1,80003988 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800039cc:	00005517          	auipc	a0,0x5
    800039d0:	88450513          	addi	a0,a0,-1916 # 80008250 <CONSOLE_STATUS+0x240>
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	f90080e7          	jalr	-112(ra) # 80001964 <_Z11printStringPKc>
    finishedD = true;
    800039dc:	00100793          	li	a5,1
    800039e0:	00007717          	auipc	a4,0x7
    800039e4:	06f70223          	sb	a5,100(a4) # 8000aa44 <finishedD>
    thread_dispatch();
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	958080e7          	jalr	-1704(ra) # 80001340 <_Z15thread_dispatchv>
}
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	00013903          	ld	s2,0(sp)
    80003a00:	02010113          	addi	sp,sp,32
    80003a04:	00008067          	ret

0000000080003a08 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a08:	fc010113          	addi	sp,sp,-64
    80003a0c:	02113c23          	sd	ra,56(sp)
    80003a10:	02813823          	sd	s0,48(sp)
    80003a14:	02913423          	sd	s1,40(sp)
    80003a18:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a1c:	01000513          	li	a0,16
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	5e8080e7          	jalr	1512(ra) # 80002008 <_ZN6ThreadnwEm>
    void operator delete (void* addr) noexcept;


    //static int sleep (time_t);
protected:
    Thread () : myHandle(nullptr){};
    80003a28:	00053423          	sd	zero,8(a0)
    WorkerA():Thread() {}
    80003a2c:	00006797          	auipc	a5,0x6
    80003a30:	53c78793          	addi	a5,a5,1340 # 80009f68 <_ZTV7WorkerA+0x10>
    80003a34:	00f53023          	sd	a5,0(a0)
    threads[0] = new WorkerA();
    80003a38:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80003a3c:	00005517          	auipc	a0,0x5
    80003a40:	82450513          	addi	a0,a0,-2012 # 80008260 <CONSOLE_STATUS+0x250>
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	f20080e7          	jalr	-224(ra) # 80001964 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003a4c:	01000513          	li	a0,16
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	5b8080e7          	jalr	1464(ra) # 80002008 <_ZN6ThreadnwEm>
    80003a58:	00053423          	sd	zero,8(a0)
    WorkerB():Thread() {}
    80003a5c:	00006797          	auipc	a5,0x6
    80003a60:	53478793          	addi	a5,a5,1332 # 80009f90 <_ZTV7WorkerB+0x10>
    80003a64:	00f53023          	sd	a5,0(a0)
    threads[1] = new WorkerB();
    80003a68:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80003a6c:	00005517          	auipc	a0,0x5
    80003a70:	80c50513          	addi	a0,a0,-2036 # 80008278 <CONSOLE_STATUS+0x268>
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	ef0080e7          	jalr	-272(ra) # 80001964 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003a7c:	01000513          	li	a0,16
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	588080e7          	jalr	1416(ra) # 80002008 <_ZN6ThreadnwEm>
    80003a88:	00053423          	sd	zero,8(a0)
    WorkerC():Thread() {}
    80003a8c:	00006797          	auipc	a5,0x6
    80003a90:	52c78793          	addi	a5,a5,1324 # 80009fb8 <_ZTV7WorkerC+0x10>
    80003a94:	00f53023          	sd	a5,0(a0)
    threads[2] = new WorkerC();
    80003a98:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80003a9c:	00004517          	auipc	a0,0x4
    80003aa0:	7f450513          	addi	a0,a0,2036 # 80008290 <CONSOLE_STATUS+0x280>
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	ec0080e7          	jalr	-320(ra) # 80001964 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003aac:	01000513          	li	a0,16
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	558080e7          	jalr	1368(ra) # 80002008 <_ZN6ThreadnwEm>
    80003ab8:	00053423          	sd	zero,8(a0)
    WorkerD():Thread() {}
    80003abc:	00006797          	auipc	a5,0x6
    80003ac0:	52478793          	addi	a5,a5,1316 # 80009fe0 <_ZTV7WorkerD+0x10>
    80003ac4:	00f53023          	sd	a5,0(a0)
    threads[3] = new WorkerD();
    80003ac8:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80003acc:	00004517          	auipc	a0,0x4
    80003ad0:	7dc50513          	addi	a0,a0,2012 # 800082a8 <CONSOLE_STATUS+0x298>
    80003ad4:	ffffe097          	auipc	ra,0xffffe
    80003ad8:	e90080e7          	jalr	-368(ra) # 80001964 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003adc:	00000493          	li	s1,0
    80003ae0:	00300793          	li	a5,3
    80003ae4:	0297c663          	blt	a5,s1,80003b10 <_Z20Threads_CPP_API_testv+0x108>
        threads[i]->start();
    80003ae8:	00349793          	slli	a5,s1,0x3
    80003aec:	fe040713          	addi	a4,s0,-32
    80003af0:	00f707b3          	add	a5,a4,a5
    80003af4:	fe07b503          	ld	a0,-32(a5)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	47c080e7          	jalr	1148(ra) # 80001f74 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b00:	0014849b          	addiw	s1,s1,1
    80003b04:	fddff06f          	j	80003ae0 <_Z20Threads_CPP_API_testv+0xd8>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	444080e7          	jalr	1092(ra) # 80001f4c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b10:	00007797          	auipc	a5,0x7
    80003b14:	f317c783          	lbu	a5,-207(a5) # 8000aa41 <finishedA>
    80003b18:	fe0788e3          	beqz	a5,80003b08 <_Z20Threads_CPP_API_testv+0x100>
    80003b1c:	00007797          	auipc	a5,0x7
    80003b20:	f267c783          	lbu	a5,-218(a5) # 8000aa42 <finishedB>
    80003b24:	fe0782e3          	beqz	a5,80003b08 <_Z20Threads_CPP_API_testv+0x100>
    80003b28:	00007797          	auipc	a5,0x7
    80003b2c:	f1b7c783          	lbu	a5,-229(a5) # 8000aa43 <finishedC>
    80003b30:	fc078ce3          	beqz	a5,80003b08 <_Z20Threads_CPP_API_testv+0x100>
    80003b34:	00007797          	auipc	a5,0x7
    80003b38:	f107c783          	lbu	a5,-240(a5) # 8000aa44 <finishedD>
    80003b3c:	fc0786e3          	beqz	a5,80003b08 <_Z20Threads_CPP_API_testv+0x100>
    }

    for (auto thread: threads) { delete thread; }
    80003b40:	fc040493          	addi	s1,s0,-64
    80003b44:	0080006f          	j	80003b4c <_Z20Threads_CPP_API_testv+0x144>
    80003b48:	00848493          	addi	s1,s1,8
    80003b4c:	fe040793          	addi	a5,s0,-32
    80003b50:	00f48e63          	beq	s1,a5,80003b6c <_Z20Threads_CPP_API_testv+0x164>
    80003b54:	0004b503          	ld	a0,0(s1)
    80003b58:	fe0508e3          	beqz	a0,80003b48 <_Z20Threads_CPP_API_testv+0x140>
    80003b5c:	00053783          	ld	a5,0(a0)
    80003b60:	0087b783          	ld	a5,8(a5)
    80003b64:	000780e7          	jalr	a5
    80003b68:	fe1ff06f          	j	80003b48 <_Z20Threads_CPP_API_testv+0x140>
}
    80003b6c:	03813083          	ld	ra,56(sp)
    80003b70:	03013403          	ld	s0,48(sp)
    80003b74:	02813483          	ld	s1,40(sp)
    80003b78:	04010113          	addi	sp,sp,64
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003b80:	fd010113          	addi	sp,sp,-48
    80003b84:	02113423          	sd	ra,40(sp)
    80003b88:	02813023          	sd	s0,32(sp)
    80003b8c:	00913c23          	sd	s1,24(sp)
    80003b90:	01213823          	sd	s2,16(sp)
    80003b94:	01313423          	sd	s3,8(sp)
    80003b98:	03010413          	addi	s0,sp,48
    80003b9c:	00050993          	mv	s3,a0
    80003ba0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003ba4:	00000913          	li	s2,0
    80003ba8:	00c0006f          	j	80003bb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x20) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003bac:	ffffe097          	auipc	ra,0xffffe
    80003bb0:	3a0080e7          	jalr	928(ra) # 80001f4c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x20) {
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	87c080e7          	jalr	-1924(ra) # 80001430 <_Z4getcv>
    80003bbc:	0005059b          	sext.w	a1,a0
    80003bc0:	02000793          	li	a5,32
    80003bc4:	02f58a63          	beq	a1,a5,80003bf8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80003bc8:	0084b503          	ld	a0,8(s1)
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	560080e7          	jalr	1376(ra) # 8000312c <_ZN9BufferCPP3putEi>
        i++;
    80003bd4:	0019071b          	addiw	a4,s2,1
    80003bd8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003bdc:	0004a683          	lw	a3,0(s1)
    80003be0:	0026979b          	slliw	a5,a3,0x2
    80003be4:	00d787bb          	addw	a5,a5,a3
    80003be8:	0017979b          	slliw	a5,a5,0x1
    80003bec:	02f767bb          	remw	a5,a4,a5
    80003bf0:	fc0792e3          	bnez	a5,80003bb4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80003bf4:	fb9ff06f          	j	80003bac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80003bf8:	00100793          	li	a5,1
    80003bfc:	00007717          	auipc	a4,0x7
    80003c00:	e4f72623          	sw	a5,-436(a4) # 8000aa48 <threadEnd>
    td->buffer->put('!');
    80003c04:	0109b783          	ld	a5,16(s3)
    80003c08:	02100593          	li	a1,33
    80003c0c:	0087b503          	ld	a0,8(a5)
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	51c080e7          	jalr	1308(ra) # 8000312c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003c18:	0104b503          	ld	a0,16(s1)
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	504080e7          	jalr	1284(ra) # 80002120 <_ZN9Semaphore6signalEv>
}
    80003c24:	02813083          	ld	ra,40(sp)
    80003c28:	02013403          	ld	s0,32(sp)
    80003c2c:	01813483          	ld	s1,24(sp)
    80003c30:	01013903          	ld	s2,16(sp)
    80003c34:	00813983          	ld	s3,8(sp)
    80003c38:	03010113          	addi	sp,sp,48
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	01213023          	sd	s2,0(sp)
    80003c54:	02010413          	addi	s0,sp,32
    80003c58:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003c5c:	00000913          	li	s2,0
    80003c60:	00c0006f          	j	80003c6c <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	2e8080e7          	jalr	744(ra) # 80001f4c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003c6c:	00007797          	auipc	a5,0x7
    80003c70:	ddc7a783          	lw	a5,-548(a5) # 8000aa48 <threadEnd>
    80003c74:	02079e63          	bnez	a5,80003cb0 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80003c78:	0004a583          	lw	a1,0(s1)
    80003c7c:	0305859b          	addiw	a1,a1,48
    80003c80:	0084b503          	ld	a0,8(s1)
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	4a8080e7          	jalr	1192(ra) # 8000312c <_ZN9BufferCPP3putEi>
        i++;
    80003c8c:	0019071b          	addiw	a4,s2,1
    80003c90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003c94:	0004a683          	lw	a3,0(s1)
    80003c98:	0026979b          	slliw	a5,a3,0x2
    80003c9c:	00d787bb          	addw	a5,a5,a3
    80003ca0:	0017979b          	slliw	a5,a5,0x1
    80003ca4:	02f767bb          	remw	a5,a4,a5
    80003ca8:	fc0792e3          	bnez	a5,80003c6c <_ZN8Producer8producerEPv+0x2c>
    80003cac:	fb9ff06f          	j	80003c64 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003cb0:	0104b503          	ld	a0,16(s1)
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	46c080e7          	jalr	1132(ra) # 80002120 <_ZN9Semaphore6signalEv>
}
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	00813483          	ld	s1,8(sp)
    80003cc8:	00013903          	ld	s2,0(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret

0000000080003cd4 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80003cd4:	fd010113          	addi	sp,sp,-48
    80003cd8:	02113423          	sd	ra,40(sp)
    80003cdc:	02813023          	sd	s0,32(sp)
    80003ce0:	00913c23          	sd	s1,24(sp)
    80003ce4:	01213823          	sd	s2,16(sp)
    80003ce8:	01313423          	sd	s3,8(sp)
    80003cec:	01413023          	sd	s4,0(sp)
    80003cf0:	03010413          	addi	s0,sp,48
    80003cf4:	00050993          	mv	s3,a0
    80003cf8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003cfc:	00000a13          	li	s4,0
    80003d00:	01c0006f          	j	80003d1c <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	248080e7          	jalr	584(ra) # 80001f4c <_ZN6Thread8dispatchEv>
    80003d0c:	0500006f          	j	80003d5c <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003d10:	00a00513          	li	a0,10
    80003d14:	ffffd097          	auipc	ra,0xffffd
    80003d18:	740080e7          	jalr	1856(ra) # 80001454 <_Z4putcc>
    while (!threadEnd) {
    80003d1c:	00007797          	auipc	a5,0x7
    80003d20:	d2c7a783          	lw	a5,-724(a5) # 8000aa48 <threadEnd>
    80003d24:	06079263          	bnez	a5,80003d88 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003d28:	00893503          	ld	a0,8(s2)
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	490080e7          	jalr	1168(ra) # 800031bc <_ZN9BufferCPP3getEv>
        i++;
    80003d34:	001a049b          	addiw	s1,s4,1
    80003d38:	00048a1b          	sext.w	s4,s1
        putc(key);
    80003d3c:	0ff57513          	andi	a0,a0,255
    80003d40:	ffffd097          	auipc	ra,0xffffd
    80003d44:	714080e7          	jalr	1812(ra) # 80001454 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003d48:	00092703          	lw	a4,0(s2)
    80003d4c:	0027179b          	slliw	a5,a4,0x2
    80003d50:	00e787bb          	addw	a5,a5,a4
    80003d54:	02f4e7bb          	remw	a5,s1,a5
    80003d58:	fa0786e3          	beqz	a5,80003d04 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003d5c:	05000793          	li	a5,80
    80003d60:	02f4e4bb          	remw	s1,s1,a5
    80003d64:	fa049ce3          	bnez	s1,80003d1c <_ZN8Consumer8consumerEPv+0x48>
    80003d68:	fa9ff06f          	j	80003d10 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003d6c:	0109b783          	ld	a5,16(s3)
    80003d70:	0087b503          	ld	a0,8(a5)
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	448080e7          	jalr	1096(ra) # 800031bc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003d7c:	0ff57513          	andi	a0,a0,255
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	444080e7          	jalr	1092(ra) # 800021c4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003d88:	0109b783          	ld	a5,16(s3)
    80003d8c:	0087b503          	ld	a0,8(a5)
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	4b8080e7          	jalr	1208(ra) # 80003248 <_ZN9BufferCPP6getCntEv>
    80003d98:	fca04ae3          	bgtz	a0,80003d6c <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80003d9c:	01093503          	ld	a0,16(s2)
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	380080e7          	jalr	896(ra) # 80002120 <_ZN9Semaphore6signalEv>
}
    80003da8:	02813083          	ld	ra,40(sp)
    80003dac:	02013403          	ld	s0,32(sp)
    80003db0:	01813483          	ld	s1,24(sp)
    80003db4:	01013903          	ld	s2,16(sp)
    80003db8:	00813983          	ld	s3,8(sp)
    80003dbc:	00013a03          	ld	s4,0(sp)
    80003dc0:	03010113          	addi	sp,sp,48
    80003dc4:	00008067          	ret

0000000080003dc8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003dc8:	f9010113          	addi	sp,sp,-112
    80003dcc:	06113423          	sd	ra,104(sp)
    80003dd0:	06813023          	sd	s0,96(sp)
    80003dd4:	04913c23          	sd	s1,88(sp)
    80003dd8:	05213823          	sd	s2,80(sp)
    80003ddc:	05313423          	sd	s3,72(sp)
    80003de0:	05413023          	sd	s4,64(sp)
    80003de4:	03513c23          	sd	s5,56(sp)
    80003de8:	03613823          	sd	s6,48(sp)
    80003dec:	03713423          	sd	s7,40(sp)
    80003df0:	07010413          	addi	s0,sp,112
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003df4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003df8:	00004517          	auipc	a0,0x4
    80003dfc:	4c850513          	addi	a0,a0,1224 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	b64080e7          	jalr	-1180(ra) # 80001964 <_Z11printStringPKc>
    getString(input, 30);
    80003e08:	01e00593          	li	a1,30
    80003e0c:	f9040493          	addi	s1,s0,-112
    80003e10:	00048513          	mv	a0,s1
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	bcc080e7          	jalr	-1076(ra) # 800019e0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003e1c:	00048513          	mv	a0,s1
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	c8c080e7          	jalr	-884(ra) # 80001aac <_Z11stringToIntPKc>
    80003e28:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003e2c:	00004517          	auipc	a0,0x4
    80003e30:	4b450513          	addi	a0,a0,1204 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	b30080e7          	jalr	-1232(ra) # 80001964 <_Z11printStringPKc>
    getString(input, 30);
    80003e3c:	01e00593          	li	a1,30
    80003e40:	00048513          	mv	a0,s1
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	b9c080e7          	jalr	-1124(ra) # 800019e0 <_Z9getStringPci>
    n = stringToInt(input);
    80003e4c:	00048513          	mv	a0,s1
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	c5c080e7          	jalr	-932(ra) # 80001aac <_Z11stringToIntPKc>
    80003e58:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003e5c:	00004517          	auipc	a0,0x4
    80003e60:	4a450513          	addi	a0,a0,1188 # 80008300 <CONSOLE_STATUS+0x2f0>
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	b00080e7          	jalr	-1280(ra) # 80001964 <_Z11printStringPKc>
    80003e6c:	00000613          	li	a2,0
    80003e70:	00a00593          	li	a1,10
    80003e74:	00090513          	mv	a0,s2
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	c84080e7          	jalr	-892(ra) # 80001afc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	49850513          	addi	a0,a0,1176 # 80008318 <CONSOLE_STATUS+0x308>
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	adc080e7          	jalr	-1316(ra) # 80001964 <_Z11printStringPKc>
    80003e90:	00000613          	li	a2,0
    80003e94:	00a00593          	li	a1,10
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	c60080e7          	jalr	-928(ra) # 80001afc <_Z8printIntiii>
    printString(".\n");
    80003ea4:	00004517          	auipc	a0,0x4
    80003ea8:	48c50513          	addi	a0,a0,1164 # 80008330 <CONSOLE_STATUS+0x320>
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	ab8080e7          	jalr	-1352(ra) # 80001964 <_Z11printStringPKc>
    if(threadNum > n) {
    80003eb4:	0324c463          	blt	s1,s2,80003edc <_Z29producerConsumer_CPP_Sync_APIv+0x114>
    } else if (threadNum < 1) {
    80003eb8:	03205c63          	blez	s2,80003ef0 <_Z29producerConsumer_CPP_Sync_APIv+0x128>
    BufferCPP *buffer = new BufferCPP(n);
    80003ebc:	03800513          	li	a0,56
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	510080e7          	jalr	1296(ra) # 800033d0 <_ZN9BufferCPPnwEm>
    80003ec8:	00050a93          	mv	s5,a0
    80003ecc:	00048593          	mv	a1,s1
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	108080e7          	jalr	264(ra) # 80002fd8 <_ZN9BufferCPPC1Ei>
    80003ed8:	0300006f          	j	80003f08 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003edc:	00004517          	auipc	a0,0x4
    80003ee0:	45c50513          	addi	a0,a0,1116 # 80008338 <CONSOLE_STATUS+0x328>
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	a80080e7          	jalr	-1408(ra) # 80001964 <_Z11printStringPKc>
        return;
    80003eec:	0140006f          	j	80003f00 <_Z29producerConsumer_CPP_Sync_APIv+0x138>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ef0:	00004517          	auipc	a0,0x4
    80003ef4:	48850513          	addi	a0,a0,1160 # 80008378 <CONSOLE_STATUS+0x368>
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	a6c080e7          	jalr	-1428(ra) # 80001964 <_Z11printStringPKc>
        return;
    80003f00:	000b8113          	mv	sp,s7
    80003f04:	2240006f          	j	80004128 <_Z29producerConsumer_CPP_Sync_APIv+0x360>
    waitForAll = new Semaphore(0);
    80003f08:	01000513          	li	a0,16
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	240080e7          	jalr	576(ra) # 8000214c <_ZN9SemaphorenwEm>
    80003f14:	00050493          	mv	s1,a0
    80003f18:	00000593          	li	a1,0
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	168080e7          	jalr	360(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    80003f24:	00007717          	auipc	a4,0x7
    80003f28:	b0c70713          	addi	a4,a4,-1268 # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
    80003f2c:	02973023          	sd	s1,32(a4)
    Thread* threads[threadNum];
    80003f30:	00391793          	slli	a5,s2,0x3
    80003f34:	00f78793          	addi	a5,a5,15
    80003f38:	ff07f793          	andi	a5,a5,-16
    80003f3c:	40f10133          	sub	sp,sp,a5
    80003f40:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003f44:	0019069b          	addiw	a3,s2,1
    80003f48:	00169793          	slli	a5,a3,0x1
    80003f4c:	00d787b3          	add	a5,a5,a3
    80003f50:	00379793          	slli	a5,a5,0x3
    80003f54:	00f78793          	addi	a5,a5,15
    80003f58:	ff07f793          	andi	a5,a5,-16
    80003f5c:	40f10133          	sub	sp,sp,a5
    80003f60:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003f64:	00191493          	slli	s1,s2,0x1
    80003f68:	012487b3          	add	a5,s1,s2
    80003f6c:	00379793          	slli	a5,a5,0x3
    80003f70:	00fa07b3          	add	a5,s4,a5
    80003f74:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003f78:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003f7c:	02073703          	ld	a4,32(a4)
    80003f80:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80003f84:	01800513          	li	a0,24
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	080080e7          	jalr	128(ra) # 80002008 <_ZN6ThreadnwEm>
    80003f90:	00050b13          	mv	s6,a0
    80003f94:	012484b3          	add	s1,s1,s2
    80003f98:	00349493          	slli	s1,s1,0x3
    80003f9c:	009a04b3          	add	s1,s4,s1
    80003fa0:	00053423          	sd	zero,8(a0)
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80003fa4:	00006797          	auipc	a5,0x6
    80003fa8:	0b478793          	addi	a5,a5,180 # 8000a058 <_ZTV8Consumer+0x10>
    80003fac:	00f53023          	sd	a5,0(a0)
    80003fb0:	00953823          	sd	s1,16(a0)
    consumerThread->start();
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	fc0080e7          	jalr	-64(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003fbc:	00000493          	li	s1,0
    80003fc0:	0580006f          	j	80004018 <_Z29producerConsumer_CPP_Sync_APIv+0x250>
            threads[i] = new Producer(data+i);
    80003fc4:	01800513          	li	a0,24
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	040080e7          	jalr	64(ra) # 80002008 <_ZN6ThreadnwEm>
    80003fd0:	00149793          	slli	a5,s1,0x1
    80003fd4:	009787b3          	add	a5,a5,s1
    80003fd8:	00379793          	slli	a5,a5,0x3
    80003fdc:	00fa07b3          	add	a5,s4,a5
    80003fe0:	00053423          	sd	zero,8(a0)
    Producer(thread_data* _td):Thread(), td(_td) {}
    80003fe4:	00006717          	auipc	a4,0x6
    80003fe8:	04c70713          	addi	a4,a4,76 # 8000a030 <_ZTV8Producer+0x10>
    80003fec:	00e53023          	sd	a4,0(a0)
    80003ff0:	00f53823          	sd	a5,16(a0)
            threads[i] = new Producer(data+i);
    80003ff4:	00349793          	slli	a5,s1,0x3
    80003ff8:	00f987b3          	add	a5,s3,a5
    80003ffc:	00a7b023          	sd	a0,0(a5)
        threads[i]->start();
    80004000:	00349793          	slli	a5,s1,0x3
    80004004:	00f987b3          	add	a5,s3,a5
    80004008:	0007b503          	ld	a0,0(a5)
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	f68080e7          	jalr	-152(ra) # 80001f74 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004014:	0014849b          	addiw	s1,s1,1
    80004018:	0724d663          	bge	s1,s2,80004084 <_Z29producerConsumer_CPP_Sync_APIv+0x2bc>
        data[i].id = i;
    8000401c:	00149793          	slli	a5,s1,0x1
    80004020:	009787b3          	add	a5,a5,s1
    80004024:	00379793          	slli	a5,a5,0x3
    80004028:	00fa07b3          	add	a5,s4,a5
    8000402c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004030:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004034:	00007717          	auipc	a4,0x7
    80004038:	a1c73703          	ld	a4,-1508(a4) # 8000aa50 <waitForAll>
    8000403c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004040:	f89042e3          	bgtz	s1,80003fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x1fc>
            threads[i] = new ProducerKeyboard(data+i);
    80004044:	01800513          	li	a0,24
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	fc0080e7          	jalr	-64(ra) # 80002008 <_ZN6ThreadnwEm>
    80004050:	00149793          	slli	a5,s1,0x1
    80004054:	009787b3          	add	a5,a5,s1
    80004058:	00379793          	slli	a5,a5,0x3
    8000405c:	00fa07b3          	add	a5,s4,a5
    80004060:	00053423          	sd	zero,8(a0)
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004064:	00006717          	auipc	a4,0x6
    80004068:	fa470713          	addi	a4,a4,-92 # 8000a008 <_ZTV16ProducerKeyboard+0x10>
    8000406c:	00e53023          	sd	a4,0(a0)
    80004070:	00f53823          	sd	a5,16(a0)
            threads[i] = new ProducerKeyboard(data+i);
    80004074:	00349793          	slli	a5,s1,0x3
    80004078:	00f987b3          	add	a5,s3,a5
    8000407c:	00a7b023          	sd	a0,0(a5)
    80004080:	f81ff06f          	j	80004000 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    Thread::dispatch();
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	ec8080e7          	jalr	-312(ra) # 80001f4c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000408c:	00000493          	li	s1,0
    80004090:	00994e63          	blt	s2,s1,800040ac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
        waitForAll->wait();
    80004094:	00007517          	auipc	a0,0x7
    80004098:	9bc53503          	ld	a0,-1604(a0) # 8000aa50 <waitForAll>
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	058080e7          	jalr	88(ra) # 800020f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800040a4:	0014849b          	addiw	s1,s1,1
    800040a8:	fe9ff06f          	j	80004090 <_Z29producerConsumer_CPP_Sync_APIv+0x2c8>
    for (int i = 0; i < threadNum; i++) {
    800040ac:	00000493          	li	s1,0
    800040b0:	0080006f          	j	800040b8 <_Z29producerConsumer_CPP_Sync_APIv+0x2f0>
    800040b4:	0014849b          	addiw	s1,s1,1
    800040b8:	0324d263          	bge	s1,s2,800040dc <_Z29producerConsumer_CPP_Sync_APIv+0x314>
        delete threads[i];
    800040bc:	00349793          	slli	a5,s1,0x3
    800040c0:	00f987b3          	add	a5,s3,a5
    800040c4:	0007b503          	ld	a0,0(a5)
    800040c8:	fe0506e3          	beqz	a0,800040b4 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    800040cc:	00053783          	ld	a5,0(a0)
    800040d0:	0087b783          	ld	a5,8(a5)
    800040d4:	000780e7          	jalr	a5
    800040d8:	fddff06f          	j	800040b4 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    delete consumerThread;
    800040dc:	000b0a63          	beqz	s6,800040f0 <_Z29producerConsumer_CPP_Sync_APIv+0x328>
    800040e0:	000b3783          	ld	a5,0(s6)
    800040e4:	0087b783          	ld	a5,8(a5)
    800040e8:	000b0513          	mv	a0,s6
    800040ec:	000780e7          	jalr	a5
    delete waitForAll;
    800040f0:	00007517          	auipc	a0,0x7
    800040f4:	96053503          	ld	a0,-1696(a0) # 8000aa50 <waitForAll>
    800040f8:	00050863          	beqz	a0,80004108 <_Z29producerConsumer_CPP_Sync_APIv+0x340>
    800040fc:	00053783          	ld	a5,0(a0)
    80004100:	0087b783          	ld	a5,8(a5)
    80004104:	000780e7          	jalr	a5
    delete buffer;
    80004108:	000a8e63          	beqz	s5,80004124 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000410c:	000a8513          	mv	a0,s5
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	1c0080e7          	jalr	448(ra) # 800032d0 <_ZN9BufferCPPD1Ev>
    80004118:	000a8513          	mv	a0,s5
    8000411c:	fffff097          	auipc	ra,0xfffff
    80004120:	31c080e7          	jalr	796(ra) # 80003438 <_ZN9BufferCPPdlEPv>
    80004124:	000b8113          	mv	sp,s7

}
    80004128:	f9040113          	addi	sp,s0,-112
    8000412c:	06813083          	ld	ra,104(sp)
    80004130:	06013403          	ld	s0,96(sp)
    80004134:	05813483          	ld	s1,88(sp)
    80004138:	05013903          	ld	s2,80(sp)
    8000413c:	04813983          	ld	s3,72(sp)
    80004140:	04013a03          	ld	s4,64(sp)
    80004144:	03813a83          	ld	s5,56(sp)
    80004148:	03013b03          	ld	s6,48(sp)
    8000414c:	02813b83          	ld	s7,40(sp)
    80004150:	07010113          	addi	sp,sp,112
    80004154:	00008067          	ret
    80004158:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000415c:	000a8513          	mv	a0,s5
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	2d8080e7          	jalr	728(ra) # 80003438 <_ZN9BufferCPPdlEPv>
    80004168:	00048513          	mv	a0,s1
    8000416c:	00008097          	auipc	ra,0x8
    80004170:	9bc080e7          	jalr	-1604(ra) # 8000bb28 <_Unwind_Resume>
    80004174:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004178:	00048513          	mv	a0,s1
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	ff8080e7          	jalr	-8(ra) # 80002174 <_ZN9SemaphoredlEPv>
    80004184:	00090513          	mv	a0,s2
    80004188:	00008097          	auipc	ra,0x8
    8000418c:	9a0080e7          	jalr	-1632(ra) # 8000bb28 <_Unwind_Resume>

0000000080004190 <_Z12testSleepingv>:

void testSleeping() {
    80004190:	f5010113          	addi	sp,sp,-176
    80004194:	0a113423          	sd	ra,168(sp)
    80004198:	0a813023          	sd	s0,160(sp)
    8000419c:	08913c23          	sd	s1,152(sp)
    800041a0:	0b010413          	addi	s0,sp,176
    const int sleepy_thread_count = 9;
    time_t sleep_times[sleepy_thread_count] = {10, 20, 30, 40, 50, 60, 70, 80, 90};
    800041a4:	00004797          	auipc	a5,0x4
    800041a8:	20478793          	addi	a5,a5,516 # 800083a8 <CONSOLE_STATUS+0x398>
    800041ac:	0007b303          	ld	t1,0(a5)
    800041b0:	0087b883          	ld	a7,8(a5)
    800041b4:	0107b803          	ld	a6,16(a5)
    800041b8:	0187b503          	ld	a0,24(a5)
    800041bc:	0207b583          	ld	a1,32(a5)
    800041c0:	0287b603          	ld	a2,40(a5)
    800041c4:	0307b683          	ld	a3,48(a5)
    800041c8:	0387b703          	ld	a4,56(a5)
    800041cc:	0407b783          	ld	a5,64(a5)
    800041d0:	f8643c23          	sd	t1,-104(s0)
    800041d4:	fb143023          	sd	a7,-96(s0)
    800041d8:	fb043423          	sd	a6,-88(s0)
    800041dc:	faa43823          	sd	a0,-80(s0)
    800041e0:	fab43c23          	sd	a1,-72(s0)
    800041e4:	fcc43023          	sd	a2,-64(s0)
    800041e8:	fcd43423          	sd	a3,-56(s0)
    800041ec:	fce43823          	sd	a4,-48(s0)
    800041f0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800041f4:	00000493          	li	s1,0
    800041f8:	00800793          	li	a5,8
    800041fc:	0297c863          	blt	a5,s1,8000422c <_Z12testSleepingv+0x9c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80004200:	00349793          	slli	a5,s1,0x3
    80004204:	f9840613          	addi	a2,s0,-104
    80004208:	00f60633          	add	a2,a2,a5
    8000420c:	fffff597          	auipc	a1,0xfffff
    80004210:	27c58593          	addi	a1,a1,636 # 80003488 <_Z9sleepyRunPv>
    80004214:	f5040513          	addi	a0,s0,-176
    80004218:	00f50533          	add	a0,a0,a5
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	0d4080e7          	jalr	212(ra) # 800012f0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80004224:	0014849b          	addiw	s1,s1,1
    80004228:	fd1ff06f          	j	800041f8 <_Z12testSleepingv+0x68>
    }

    while (!(finished[0] && finished[1] && finished[2] && finished[3] && finished[4] && finished[5] && finished[6] && finished[7] && finished[8])) {}
    8000422c:	00007797          	auipc	a5,0x7
    80004230:	80c7c783          	lbu	a5,-2036(a5) # 8000aa38 <finished>
    80004234:	fe078ce3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004238:	00007797          	auipc	a5,0x7
    8000423c:	8017c783          	lbu	a5,-2047(a5) # 8000aa39 <finished+0x1>
    80004240:	fe0786e3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004244:	00006797          	auipc	a5,0x6
    80004248:	7f67c783          	lbu	a5,2038(a5) # 8000aa3a <finished+0x2>
    8000424c:	fe0780e3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004250:	00006797          	auipc	a5,0x6
    80004254:	7eb7c783          	lbu	a5,2027(a5) # 8000aa3b <finished+0x3>
    80004258:	fc078ae3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    8000425c:	00006797          	auipc	a5,0x6
    80004260:	7e07c783          	lbu	a5,2016(a5) # 8000aa3c <finished+0x4>
    80004264:	fc0784e3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004268:	00006797          	auipc	a5,0x6
    8000426c:	7d57c783          	lbu	a5,2005(a5) # 8000aa3d <finished+0x5>
    80004270:	fa078ee3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004274:	00006797          	auipc	a5,0x6
    80004278:	7ca7c783          	lbu	a5,1994(a5) # 8000aa3e <finished+0x6>
    8000427c:	fa0788e3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    80004280:	00006797          	auipc	a5,0x6
    80004284:	7bf7c783          	lbu	a5,1983(a5) # 8000aa3f <finished+0x7>
    80004288:	fa0782e3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
    8000428c:	00006797          	auipc	a5,0x6
    80004290:	7b47c783          	lbu	a5,1972(a5) # 8000aa40 <finished+0x8>
    80004294:	f8078ce3          	beqz	a5,8000422c <_Z12testSleepingv+0x9c>
}
    80004298:	0a813083          	ld	ra,168(sp)
    8000429c:	0a013403          	ld	s0,160(sp)
    800042a0:	09813483          	ld	s1,152(sp)
    800042a4:	0b010113          	addi	sp,sp,176
    800042a8:	00008067          	ret

00000000800042ac <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    800042ac:	f9010113          	addi	sp,sp,-112
    800042b0:	06113423          	sd	ra,104(sp)
    800042b4:	06813023          	sd	s0,96(sp)
    800042b8:	04913c23          	sd	s1,88(sp)
    800042bc:	05213823          	sd	s2,80(sp)
    800042c0:	05313423          	sd	s3,72(sp)
    800042c4:	05413023          	sd	s4,64(sp)
    800042c8:	03513c23          	sd	s5,56(sp)
    800042cc:	03613823          	sd	s6,48(sp)
    800042d0:	03713423          	sd	s7,40(sp)
    800042d4:	03813023          	sd	s8,32(sp)
    800042d8:	07010413          	addi	s0,sp,112
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    800042dc:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    800042e0:	00004517          	auipc	a0,0x4
    800042e4:	fe050513          	addi	a0,a0,-32 # 800082c0 <CONSOLE_STATUS+0x2b0>
    800042e8:	ffffd097          	auipc	ra,0xffffd
    800042ec:	67c080e7          	jalr	1660(ra) # 80001964 <_Z11printStringPKc>
        getString(input, 30);
    800042f0:	01e00593          	li	a1,30
    800042f4:	f9040493          	addi	s1,s0,-112
    800042f8:	00048513          	mv	a0,s1
    800042fc:	ffffd097          	auipc	ra,0xffffd
    80004300:	6e4080e7          	jalr	1764(ra) # 800019e0 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80004304:	00048513          	mv	a0,s1
    80004308:	ffffd097          	auipc	ra,0xffffd
    8000430c:	7a4080e7          	jalr	1956(ra) # 80001aac <_Z11stringToIntPKc>
    80004310:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80004314:	00004517          	auipc	a0,0x4
    80004318:	fcc50513          	addi	a0,a0,-52 # 800082e0 <CONSOLE_STATUS+0x2d0>
    8000431c:	ffffd097          	auipc	ra,0xffffd
    80004320:	648080e7          	jalr	1608(ra) # 80001964 <_Z11printStringPKc>
        getString(input, 30);
    80004324:	01e00593          	li	a1,30
    80004328:	00048513          	mv	a0,s1
    8000432c:	ffffd097          	auipc	ra,0xffffd
    80004330:	6b4080e7          	jalr	1716(ra) # 800019e0 <_Z9getStringPci>
        n = stringToInt(input);
    80004334:	00048513          	mv	a0,s1
    80004338:	ffffd097          	auipc	ra,0xffffd
    8000433c:	774080e7          	jalr	1908(ra) # 80001aac <_Z11stringToIntPKc>
    80004340:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80004344:	00004517          	auipc	a0,0x4
    80004348:	fbc50513          	addi	a0,a0,-68 # 80008300 <CONSOLE_STATUS+0x2f0>
    8000434c:	ffffd097          	auipc	ra,0xffffd
    80004350:	618080e7          	jalr	1560(ra) # 80001964 <_Z11printStringPKc>
    80004354:	00000613          	li	a2,0
    80004358:	00a00593          	li	a1,10
    8000435c:	00098513          	mv	a0,s3
    80004360:	ffffd097          	auipc	ra,0xffffd
    80004364:	79c080e7          	jalr	1948(ra) # 80001afc <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80004368:	00004517          	auipc	a0,0x4
    8000436c:	fb050513          	addi	a0,a0,-80 # 80008318 <CONSOLE_STATUS+0x308>
    80004370:	ffffd097          	auipc	ra,0xffffd
    80004374:	5f4080e7          	jalr	1524(ra) # 80001964 <_Z11printStringPKc>
    80004378:	00000613          	li	a2,0
    8000437c:	00a00593          	li	a1,10
    80004380:	00048513          	mv	a0,s1
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	778080e7          	jalr	1912(ra) # 80001afc <_Z8printIntiii>
        printString(".\n");
    8000438c:	00004517          	auipc	a0,0x4
    80004390:	fa450513          	addi	a0,a0,-92 # 80008330 <CONSOLE_STATUS+0x320>
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	5d0080e7          	jalr	1488(ra) # 80001964 <_Z11printStringPKc>
        if(threadNum > n) {
    8000439c:	0334c463          	blt	s1,s3,800043c4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x118>
        } else if (threadNum < 1) {
    800043a0:	03305c63          	blez	s3,800043d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x12c>
        BufferCPP *buffer = new BufferCPP(n);
    800043a4:	03800513          	li	a0,56
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	028080e7          	jalr	40(ra) # 800033d0 <_ZN9BufferCPPnwEm>
    800043b0:	00050a93          	mv	s5,a0
    800043b4:	00048593          	mv	a1,s1
    800043b8:	fffff097          	auipc	ra,0xfffff
    800043bc:	c20080e7          	jalr	-992(ra) # 80002fd8 <_ZN9BufferCPPC1Ei>
    800043c0:	0300006f          	j	800043f0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x144>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800043c4:	00004517          	auipc	a0,0x4
    800043c8:	f7450513          	addi	a0,a0,-140 # 80008338 <CONSOLE_STATUS+0x328>
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	598080e7          	jalr	1432(ra) # 80001964 <_Z11printStringPKc>
            return;
    800043d4:	0140006f          	j	800043e8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x13c>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    800043d8:	00004517          	auipc	a0,0x4
    800043dc:	fa050513          	addi	a0,a0,-96 # 80008378 <CONSOLE_STATUS+0x368>
    800043e0:	ffffd097          	auipc	ra,0xffffd
    800043e4:	584080e7          	jalr	1412(ra) # 80001964 <_Z11printStringPKc>
            return;
    800043e8:	000c0113          	mv	sp,s8
    800043ec:	1f40006f          	j	800045e0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x334>
        waitForAll = new Semaphore(0);
    800043f0:	01000513          	li	a0,16
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	d58080e7          	jalr	-680(ra) # 8000214c <_ZN9SemaphorenwEm>
    800043fc:	00050493          	mv	s1,a0
    80004400:	00000593          	li	a1,0
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	c80080e7          	jalr	-896(ra) # 80002084 <_ZN9SemaphoreC1Ei>
    8000440c:	00006917          	auipc	s2,0x6
    80004410:	62490913          	addi	s2,s2,1572 # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
    80004414:	02993423          	sd	s1,40(s2)
        Thread *producers[threadNum];
    80004418:	00399793          	slli	a5,s3,0x3
    8000441c:	00f78793          	addi	a5,a5,15
    80004420:	ff07f793          	andi	a5,a5,-16
    80004424:	40f10133          	sub	sp,sp,a5
    80004428:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    8000442c:	0019871b          	addiw	a4,s3,1
    80004430:	00171793          	slli	a5,a4,0x1
    80004434:	00e787b3          	add	a5,a5,a4
    80004438:	00379793          	slli	a5,a5,0x3
    8000443c:	00f78793          	addi	a5,a5,15
    80004440:	ff07f793          	andi	a5,a5,-16
    80004444:	40f10133          	sub	sp,sp,a5
    80004448:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    8000444c:	00199493          	slli	s1,s3,0x1
    80004450:	013484b3          	add	s1,s1,s3
    80004454:	00349493          	slli	s1,s1,0x3
    80004458:	009b04b3          	add	s1,s6,s1
    8000445c:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80004460:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80004464:	02893783          	ld	a5,40(s2)
    80004468:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    8000446c:	01800513          	li	a0,24
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	b98080e7          	jalr	-1128(ra) # 80002008 <_ZN6ThreadnwEm>
    80004478:	00050b93          	mv	s7,a0
    8000447c:	00053423          	sd	zero,8(a0)
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004480:	00006797          	auipc	a5,0x6
    80004484:	c5078793          	addi	a5,a5,-944 # 8000a0d0 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	00953823          	sd	s1,16(a0)
        consumer->start();
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	ae4080e7          	jalr	-1308(ra) # 80001f74 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80004498:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    8000449c:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    800044a0:	02893783          	ld	a5,40(s2)
    800044a4:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800044a8:	01800513          	li	a0,24
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	b5c080e7          	jalr	-1188(ra) # 80002008 <_ZN6ThreadnwEm>
    800044b4:	00053423          	sd	zero,8(a0)
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800044b8:	00006717          	auipc	a4,0x6
    800044bc:	bc870713          	addi	a4,a4,-1080 # 8000a080 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    800044c0:	00e53023          	sd	a4,0(a0)
    800044c4:	01653823          	sd	s6,16(a0)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    800044c8:	00aa3023          	sd	a0,0(s4)
        producers[0]->start();
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	aa8080e7          	jalr	-1368(ra) # 80001f74 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    800044d4:	00100913          	li	s2,1
    800044d8:	07395263          	bge	s2,s3,8000453c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x290>
            threadData[i].id = i;
    800044dc:	00191493          	slli	s1,s2,0x1
    800044e0:	012484b3          	add	s1,s1,s2
    800044e4:	00349493          	slli	s1,s1,0x3
    800044e8:	009b04b3          	add	s1,s6,s1
    800044ec:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    800044f0:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    800044f4:	00006797          	auipc	a5,0x6
    800044f8:	5647b783          	ld	a5,1380(a5) # 8000aa58 <_ZN19ConsumerProducerCPP10waitForAllE>
    800044fc:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80004500:	01800513          	li	a0,24
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	b04080e7          	jalr	-1276(ra) # 80002008 <_ZN6ThreadnwEm>
    8000450c:	00053423          	sd	zero,8(a0)
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80004510:	00006717          	auipc	a4,0x6
    80004514:	b9870713          	addi	a4,a4,-1128 # 8000a0a8 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80004518:	00e53023          	sd	a4,0(a0)
    8000451c:	00953823          	sd	s1,16(a0)
            producers[i] = new Producer(&threadData[i]);
    80004520:	00391713          	slli	a4,s2,0x3
    80004524:	00ea0733          	add	a4,s4,a4
    80004528:	00a73023          	sd	a0,0(a4)
            producers[i]->start();
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	a48080e7          	jalr	-1464(ra) # 80001f74 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80004534:	0019091b          	addiw	s2,s2,1
    80004538:	fa1ff06f          	j	800044d8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x22c>
        Thread::dispatch();
    8000453c:	ffffe097          	auipc	ra,0xffffe
    80004540:	a10080e7          	jalr	-1520(ra) # 80001f4c <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80004544:	00000493          	li	s1,0
    80004548:	0099ce63          	blt	s3,s1,80004564 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2b8>
            waitForAll->wait();
    8000454c:	00006517          	auipc	a0,0x6
    80004550:	50c53503          	ld	a0,1292(a0) # 8000aa58 <_ZN19ConsumerProducerCPP10waitForAllE>
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	ba0080e7          	jalr	-1120(ra) # 800020f4 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    8000455c:	0014849b          	addiw	s1,s1,1
    80004560:	fe9ff06f          	j	80004548 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x29c>
        delete waitForAll;
    80004564:	00006517          	auipc	a0,0x6
    80004568:	4f453503          	ld	a0,1268(a0) # 8000aa58 <_ZN19ConsumerProducerCPP10waitForAllE>
    8000456c:	00050863          	beqz	a0,8000457c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2d0>
    80004570:	00053783          	ld	a5,0(a0)
    80004574:	0087b783          	ld	a5,8(a5)
    80004578:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    8000457c:	00000493          	li	s1,0
    80004580:	0080006f          	j	80004588 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2dc>
        for (int i = 0; i < threadNum; i++) {
    80004584:	0014849b          	addiw	s1,s1,1
    80004588:	0334d263          	bge	s1,s3,800045ac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x300>
            delete producers[i];
    8000458c:	00349793          	slli	a5,s1,0x3
    80004590:	00fa07b3          	add	a5,s4,a5
    80004594:	0007b503          	ld	a0,0(a5)
    80004598:	fe0506e3          	beqz	a0,80004584 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2d8>
    8000459c:	00053783          	ld	a5,0(a0)
    800045a0:	0087b783          	ld	a5,8(a5)
    800045a4:	000780e7          	jalr	a5
    800045a8:	fddff06f          	j	80004584 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2d8>
        delete consumer;
    800045ac:	000b8a63          	beqz	s7,800045c0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x314>
    800045b0:	000bb783          	ld	a5,0(s7)
    800045b4:	0087b783          	ld	a5,8(a5)
    800045b8:	000b8513          	mv	a0,s7
    800045bc:	000780e7          	jalr	a5
        delete buffer;
    800045c0:	000a8e63          	beqz	s5,800045dc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x330>
    800045c4:	000a8513          	mv	a0,s5
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	d08080e7          	jalr	-760(ra) # 800032d0 <_ZN9BufferCPPD1Ev>
    800045d0:	000a8513          	mv	a0,s5
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	e64080e7          	jalr	-412(ra) # 80003438 <_ZN9BufferCPPdlEPv>
    800045dc:	000c0113          	mv	sp,s8
    }
    800045e0:	f9040113          	addi	sp,s0,-112
    800045e4:	06813083          	ld	ra,104(sp)
    800045e8:	06013403          	ld	s0,96(sp)
    800045ec:	05813483          	ld	s1,88(sp)
    800045f0:	05013903          	ld	s2,80(sp)
    800045f4:	04813983          	ld	s3,72(sp)
    800045f8:	04013a03          	ld	s4,64(sp)
    800045fc:	03813a83          	ld	s5,56(sp)
    80004600:	03013b03          	ld	s6,48(sp)
    80004604:	02813b83          	ld	s7,40(sp)
    80004608:	02013c03          	ld	s8,32(sp)
    8000460c:	07010113          	addi	sp,sp,112
    80004610:	00008067          	ret
    80004614:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80004618:	000a8513          	mv	a0,s5
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	e1c080e7          	jalr	-484(ra) # 80003438 <_ZN9BufferCPPdlEPv>
    80004624:	00048513          	mv	a0,s1
    80004628:	00007097          	auipc	ra,0x7
    8000462c:	500080e7          	jalr	1280(ra) # 8000bb28 <_Unwind_Resume>
    80004630:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80004634:	00048513          	mv	a0,s1
    80004638:	ffffe097          	auipc	ra,0xffffe
    8000463c:	b3c080e7          	jalr	-1220(ra) # 80002174 <_ZN9SemaphoredlEPv>
    80004640:	00090513          	mv	a0,s2
    80004644:	00007097          	auipc	ra,0x7
    80004648:	4e4080e7          	jalr	1252(ra) # 8000bb28 <_Unwind_Resume>

000000008000464c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta




void userMain() {
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00113423          	sd	ra,8(sp)
    80004654:	00813023          	sd	s0,0(sp)
    80004658:	01010413          	addi	s0,sp,16
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API

    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    8000465c:	00000097          	auipc	ra,0x0
    80004660:	c50080e7          	jalr	-944(ra) # 800042ac <_ZN19ConsumerProducerCPP20testConsumerProducerEv>


    80004664:	00813083          	ld	ra,8(sp)
    80004668:	00013403          	ld	s0,0(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80004674:	ff010113          	addi	sp,sp,-16
    80004678:	00813423          	sd	s0,8(sp)
    8000467c:	01010413          	addi	s0,sp,16
    80004680:	00813403          	ld	s0,8(sp)
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00008067          	ret

000000008000468c <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    8000468c:	ff010113          	addi	sp,sp,-16
    80004690:	00813423          	sd	s0,8(sp)
    80004694:	01010413          	addi	s0,sp,16
    80004698:	00813403          	ld	s0,8(sp)
    8000469c:	01010113          	addi	sp,sp,16
    800046a0:	00008067          	ret

00000000800046a4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00813423          	sd	s0,8(sp)
    800046ac:	01010413          	addi	s0,sp,16
    800046b0:	00813403          	ld	s0,8(sp)
    800046b4:	01010113          	addi	sp,sp,16
    800046b8:	00008067          	ret

00000000800046bc <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800046bc:	ff010113          	addi	sp,sp,-16
    800046c0:	00813423          	sd	s0,8(sp)
    800046c4:	01010413          	addi	s0,sp,16
    800046c8:	00813403          	ld	s0,8(sp)
    800046cc:	01010113          	addi	sp,sp,16
    800046d0:	00008067          	ret

00000000800046d4 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00813423          	sd	s0,8(sp)
    800046dc:	01010413          	addi	s0,sp,16
    800046e0:	00813403          	ld	s0,8(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret

00000000800046ec <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800046ec:	ff010113          	addi	sp,sp,-16
    800046f0:	00813423          	sd	s0,8(sp)
    800046f4:	01010413          	addi	s0,sp,16
    800046f8:	00813403          	ld	s0,8(sp)
    800046fc:	01010113          	addi	sp,sp,16
    80004700:	00008067          	ret

0000000080004704 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004704:	ff010113          	addi	sp,sp,-16
    80004708:	00813423          	sd	s0,8(sp)
    8000470c:	01010413          	addi	s0,sp,16
    80004710:	00813403          	ld	s0,8(sp)
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00008067          	ret

000000008000471c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000471c:	ff010113          	addi	sp,sp,-16
    80004720:	00813423          	sd	s0,8(sp)
    80004724:	01010413          	addi	s0,sp,16
    80004728:	00813403          	ld	s0,8(sp)
    8000472c:	01010113          	addi	sp,sp,16
    80004730:	00008067          	ret

0000000080004734 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004734:	ff010113          	addi	sp,sp,-16
    80004738:	00813423          	sd	s0,8(sp)
    8000473c:	01010413          	addi	s0,sp,16
    80004740:	00813403          	ld	s0,8(sp)
    80004744:	01010113          	addi	sp,sp,16
    80004748:	00008067          	ret

000000008000474c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000474c:	ff010113          	addi	sp,sp,-16
    80004750:	00813423          	sd	s0,8(sp)
    80004754:	01010413          	addi	s0,sp,16
    80004758:	00813403          	ld	s0,8(sp)
    8000475c:	01010113          	addi	sp,sp,16
    80004760:	00008067          	ret

0000000080004764 <_ZN7WorkerAD0Ev>:
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00113423          	sd	ra,8(sp)
    8000476c:	00813023          	sd	s0,0(sp)
    80004770:	01010413          	addi	s0,sp,16
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	8bc080e7          	jalr	-1860(ra) # 80002030 <_ZN6ThreaddlEPv>
    8000477c:	00813083          	ld	ra,8(sp)
    80004780:	00013403          	ld	s0,0(sp)
    80004784:	01010113          	addi	sp,sp,16
    80004788:	00008067          	ret

000000008000478c <_ZN7WorkerBD0Ev>:
class WorkerB: public Thread {
    8000478c:	ff010113          	addi	sp,sp,-16
    80004790:	00113423          	sd	ra,8(sp)
    80004794:	00813023          	sd	s0,0(sp)
    80004798:	01010413          	addi	s0,sp,16
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	894080e7          	jalr	-1900(ra) # 80002030 <_ZN6ThreaddlEPv>
    800047a4:	00813083          	ld	ra,8(sp)
    800047a8:	00013403          	ld	s0,0(sp)
    800047ac:	01010113          	addi	sp,sp,16
    800047b0:	00008067          	ret

00000000800047b4 <_ZN7WorkerCD0Ev>:
class WorkerC: public Thread {
    800047b4:	ff010113          	addi	sp,sp,-16
    800047b8:	00113423          	sd	ra,8(sp)
    800047bc:	00813023          	sd	s0,0(sp)
    800047c0:	01010413          	addi	s0,sp,16
    800047c4:	ffffe097          	auipc	ra,0xffffe
    800047c8:	86c080e7          	jalr	-1940(ra) # 80002030 <_ZN6ThreaddlEPv>
    800047cc:	00813083          	ld	ra,8(sp)
    800047d0:	00013403          	ld	s0,0(sp)
    800047d4:	01010113          	addi	sp,sp,16
    800047d8:	00008067          	ret

00000000800047dc <_ZN7WorkerDD0Ev>:
class WorkerD: public Thread {
    800047dc:	ff010113          	addi	sp,sp,-16
    800047e0:	00113423          	sd	ra,8(sp)
    800047e4:	00813023          	sd	s0,0(sp)
    800047e8:	01010413          	addi	s0,sp,16
    800047ec:	ffffe097          	auipc	ra,0xffffe
    800047f0:	844080e7          	jalr	-1980(ra) # 80002030 <_ZN6ThreaddlEPv>
    800047f4:	00813083          	ld	ra,8(sp)
    800047f8:	00013403          	ld	s0,0(sp)
    800047fc:	01010113          	addi	sp,sp,16
    80004800:	00008067          	ret

0000000080004804 <_ZN8ConsumerD0Ev>:
class Consumer:public Thread {
    80004804:	ff010113          	addi	sp,sp,-16
    80004808:	00113423          	sd	ra,8(sp)
    8000480c:	00813023          	sd	s0,0(sp)
    80004810:	01010413          	addi	s0,sp,16
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	81c080e7          	jalr	-2020(ra) # 80002030 <_ZN6ThreaddlEPv>
    8000481c:	00813083          	ld	ra,8(sp)
    80004820:	00013403          	ld	s0,0(sp)
    80004824:	01010113          	addi	sp,sp,16
    80004828:	00008067          	ret

000000008000482c <_ZN8ProducerD0Ev>:
class Producer:public Thread {
    8000482c:	ff010113          	addi	sp,sp,-16
    80004830:	00113423          	sd	ra,8(sp)
    80004834:	00813023          	sd	s0,0(sp)
    80004838:	01010413          	addi	s0,sp,16
    8000483c:	ffffd097          	auipc	ra,0xffffd
    80004840:	7f4080e7          	jalr	2036(ra) # 80002030 <_ZN6ThreaddlEPv>
    80004844:	00813083          	ld	ra,8(sp)
    80004848:	00013403          	ld	s0,0(sp)
    8000484c:	01010113          	addi	sp,sp,16
    80004850:	00008067          	ret

0000000080004854 <_ZN16ProducerKeyboardD0Ev>:
class ProducerKeyboard:public Thread {
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00113423          	sd	ra,8(sp)
    8000485c:	00813023          	sd	s0,0(sp)
    80004860:	01010413          	addi	s0,sp,16
    80004864:	ffffd097          	auipc	ra,0xffffd
    80004868:	7cc080e7          	jalr	1996(ra) # 80002030 <_ZN6ThreaddlEPv>
    8000486c:	00813083          	ld	ra,8(sp)
    80004870:	00013403          	ld	s0,0(sp)
    80004874:	01010113          	addi	sp,sp,16
    80004878:	00008067          	ret

000000008000487c <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    class Consumer : public Thread {
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00113423          	sd	ra,8(sp)
    80004884:	00813023          	sd	s0,0(sp)
    80004888:	01010413          	addi	s0,sp,16
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	7a4080e7          	jalr	1956(ra) # 80002030 <_ZN6ThreaddlEPv>
    80004894:	00813083          	ld	ra,8(sp)
    80004898:	00013403          	ld	s0,0(sp)
    8000489c:	01010113          	addi	sp,sp,16
    800048a0:	00008067          	ret

00000000800048a4 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    class ProducerKeyborad : public Thread {
    800048a4:	ff010113          	addi	sp,sp,-16
    800048a8:	00113423          	sd	ra,8(sp)
    800048ac:	00813023          	sd	s0,0(sp)
    800048b0:	01010413          	addi	s0,sp,16
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	77c080e7          	jalr	1916(ra) # 80002030 <_ZN6ThreaddlEPv>
    800048bc:	00813083          	ld	ra,8(sp)
    800048c0:	00013403          	ld	s0,0(sp)
    800048c4:	01010113          	addi	sp,sp,16
    800048c8:	00008067          	ret

00000000800048cc <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    class Producer : public Thread {
    800048cc:	ff010113          	addi	sp,sp,-16
    800048d0:	00113423          	sd	ra,8(sp)
    800048d4:	00813023          	sd	s0,0(sp)
    800048d8:	01010413          	addi	s0,sp,16
    800048dc:	ffffd097          	auipc	ra,0xffffd
    800048e0:	754080e7          	jalr	1876(ra) # 80002030 <_ZN6ThreaddlEPv>
    800048e4:	00813083          	ld	ra,8(sp)
    800048e8:	00013403          	ld	s0,0(sp)
    800048ec:	01010113          	addi	sp,sp,16
    800048f0:	00008067          	ret

00000000800048f4 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    800048f4:	fe010113          	addi	sp,sp,-32
    800048f8:	00113c23          	sd	ra,24(sp)
    800048fc:	00813823          	sd	s0,16(sp)
    80004900:	00913423          	sd	s1,8(sp)
    80004904:	02010413          	addi	s0,sp,32
    80004908:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x20) {
    8000490c:	ffffd097          	auipc	ra,0xffffd
    80004910:	b24080e7          	jalr	-1244(ra) # 80001430 <_Z4getcv>
    80004914:	0005059b          	sext.w	a1,a0
    80004918:	02000793          	li	a5,32
    8000491c:	00f58c63          	beq	a1,a5,80004934 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80004920:	0104b783          	ld	a5,16(s1)
    80004924:	0087b503          	ld	a0,8(a5)
    80004928:	fffff097          	auipc	ra,0xfffff
    8000492c:	804080e7          	jalr	-2044(ra) # 8000312c <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x20) {
    80004930:	fddff06f          	j	8000490c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80004934:	00100793          	li	a5,1
    80004938:	00006717          	auipc	a4,0x6
    8000493c:	0ef72c23          	sw	a5,248(a4) # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80004940:	0104b783          	ld	a5,16(s1)
    80004944:	02100593          	li	a1,33
    80004948:	0087b503          	ld	a0,8(a5)
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	7e0080e7          	jalr	2016(ra) # 8000312c <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80004954:	0104b783          	ld	a5,16(s1)
    80004958:	0107b503          	ld	a0,16(a5)
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	7c4080e7          	jalr	1988(ra) # 80002120 <_ZN9Semaphore6signalEv>
        }
    80004964:	01813083          	ld	ra,24(sp)
    80004968:	01013403          	ld	s0,16(sp)
    8000496c:	00813483          	ld	s1,8(sp)
    80004970:	02010113          	addi	sp,sp,32
    80004974:	00008067          	ret

0000000080004978 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80004978:	fd010113          	addi	sp,sp,-48
    8000497c:	02113423          	sd	ra,40(sp)
    80004980:	02813023          	sd	s0,32(sp)
    80004984:	00913c23          	sd	s1,24(sp)
    80004988:	01213823          	sd	s2,16(sp)
    8000498c:	01313423          	sd	s3,8(sp)
    80004990:	03010413          	addi	s0,sp,48
    80004994:	00050913          	mv	s2,a0
            int i = 0;
    80004998:	00000993          	li	s3,0
    8000499c:	0100006f          	j	800049ac <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    800049a0:	00a00513          	li	a0,10
    800049a4:	ffffe097          	auipc	ra,0xffffe
    800049a8:	820080e7          	jalr	-2016(ra) # 800021c4 <_ZN7Console4putcEc>
            while (!threadEnd) {
    800049ac:	00006797          	auipc	a5,0x6
    800049b0:	0847a783          	lw	a5,132(a5) # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
    800049b4:	04079a63          	bnez	a5,80004a08 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    800049b8:	01093783          	ld	a5,16(s2)
    800049bc:	0087b503          	ld	a0,8(a5)
    800049c0:	ffffe097          	auipc	ra,0xffffe
    800049c4:	7fc080e7          	jalr	2044(ra) # 800031bc <_ZN9BufferCPP3getEv>
                i++;
    800049c8:	0019849b          	addiw	s1,s3,1
    800049cc:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    800049d0:	0ff57513          	andi	a0,a0,255
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	7f0080e7          	jalr	2032(ra) # 800021c4 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    800049dc:	05000793          	li	a5,80
    800049e0:	02f4e4bb          	remw	s1,s1,a5
    800049e4:	fc0494e3          	bnez	s1,800049ac <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    800049e8:	fb9ff06f          	j	800049a0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    800049ec:	01093783          	ld	a5,16(s2)
    800049f0:	0087b503          	ld	a0,8(a5)
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	7c8080e7          	jalr	1992(ra) # 800031bc <_ZN9BufferCPP3getEv>
                Console::putc(key);
    800049fc:	0ff57513          	andi	a0,a0,255
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	7c4080e7          	jalr	1988(ra) # 800021c4 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80004a08:	01093783          	ld	a5,16(s2)
    80004a0c:	0087b503          	ld	a0,8(a5)
    80004a10:	fffff097          	auipc	ra,0xfffff
    80004a14:	838080e7          	jalr	-1992(ra) # 80003248 <_ZN9BufferCPP6getCntEv>
    80004a18:	fca04ae3          	bgtz	a0,800049ec <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80004a1c:	01093783          	ld	a5,16(s2)
    80004a20:	0107b503          	ld	a0,16(a5)
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	6fc080e7          	jalr	1788(ra) # 80002120 <_ZN9Semaphore6signalEv>
        }
    80004a2c:	02813083          	ld	ra,40(sp)
    80004a30:	02013403          	ld	s0,32(sp)
    80004a34:	01813483          	ld	s1,24(sp)
    80004a38:	01013903          	ld	s2,16(sp)
    80004a3c:	00813983          	ld	s3,8(sp)
    80004a40:	03010113          	addi	sp,sp,48
    80004a44:	00008067          	ret

0000000080004a48 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00050493          	mv	s1,a0
            int i = 0;
    80004a64:	00000913          	li	s2,0
            while (!threadEnd) {
    80004a68:	00006797          	auipc	a5,0x6
    80004a6c:	fc87a783          	lw	a5,-56(a5) # 8000aa30 <_ZN19ConsumerProducerCPP9threadEndE>
    80004a70:	04079263          	bnez	a5,80004ab4 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    80004a74:	0104b783          	ld	a5,16(s1)
    80004a78:	0007a583          	lw	a1,0(a5)
    80004a7c:	0305859b          	addiw	a1,a1,48
    80004a80:	0087b503          	ld	a0,8(a5)
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	6a8080e7          	jalr	1704(ra) # 8000312c <_ZN9BufferCPP3putEi>
                i++;
    80004a8c:	0019071b          	addiw	a4,s2,1
    80004a90:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    80004a94:	0104b783          	ld	a5,16(s1)
    80004a98:	0007a783          	lw	a5,0(a5)
    80004a9c:	00e787bb          	addw	a5,a5,a4
    80004aa0:	00500513          	li	a0,5
    80004aa4:	02a7e53b          	remw	a0,a5,a0
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	534080e7          	jalr	1332(ra) # 80001fdc <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    80004ab4:	0104b783          	ld	a5,16(s1)
    80004ab8:	0107b503          	ld	a0,16(a5)
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	664080e7          	jalr	1636(ra) # 80002120 <_ZN9Semaphore6signalEv>
        }
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	02010113          	addi	sp,sp,32
    80004ad8:	00008067          	ret

0000000080004adc <_ZN7WorkerA3runEv>:
    void run() override {
    80004adc:	ff010113          	addi	sp,sp,-16
    80004ae0:	00113423          	sd	ra,8(sp)
    80004ae4:	00813023          	sd	s0,0(sp)
    80004ae8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004aec:	00000593          	li	a1,0
    80004af0:	fffff097          	auipc	ra,0xfffff
    80004af4:	ab0080e7          	jalr	-1360(ra) # 800035a0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004af8:	00813083          	ld	ra,8(sp)
    80004afc:	00013403          	ld	s0,0(sp)
    80004b00:	01010113          	addi	sp,sp,16
    80004b04:	00008067          	ret

0000000080004b08 <_ZN7WorkerB3runEv>:
    void run() override {
    80004b08:	ff010113          	addi	sp,sp,-16
    80004b0c:	00113423          	sd	ra,8(sp)
    80004b10:	00813023          	sd	s0,0(sp)
    80004b14:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b18:	00000593          	li	a1,0
    80004b1c:	fffff097          	auipc	ra,0xfffff
    80004b20:	b50080e7          	jalr	-1200(ra) # 8000366c <_ZN7WorkerB11workerBodyBEPv>
    }
    80004b24:	00813083          	ld	ra,8(sp)
    80004b28:	00013403          	ld	s0,0(sp)
    80004b2c:	01010113          	addi	sp,sp,16
    80004b30:	00008067          	ret

0000000080004b34 <_ZN7WorkerC3runEv>:
    void run() override {
    80004b34:	ff010113          	addi	sp,sp,-16
    80004b38:	00113423          	sd	ra,8(sp)
    80004b3c:	00813023          	sd	s0,0(sp)
    80004b40:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004b44:	00000593          	li	a1,0
    80004b48:	fffff097          	auipc	ra,0xfffff
    80004b4c:	bf8080e7          	jalr	-1032(ra) # 80003740 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004b50:	00813083          	ld	ra,8(sp)
    80004b54:	00013403          	ld	s0,0(sp)
    80004b58:	01010113          	addi	sp,sp,16
    80004b5c:	00008067          	ret

0000000080004b60 <_ZN7WorkerD3runEv>:
    void run() override {
    80004b60:	ff010113          	addi	sp,sp,-16
    80004b64:	00113423          	sd	ra,8(sp)
    80004b68:	00813023          	sd	s0,0(sp)
    80004b6c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004b70:	00000593          	li	a1,0
    80004b74:	fffff097          	auipc	ra,0xfffff
    80004b78:	d4c080e7          	jalr	-692(ra) # 800038c0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004b7c:	00813083          	ld	ra,8(sp)
    80004b80:	00013403          	ld	s0,0(sp)
    80004b84:	01010113          	addi	sp,sp,16
    80004b88:	00008067          	ret

0000000080004b8c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004b8c:	ff010113          	addi	sp,sp,-16
    80004b90:	00113423          	sd	ra,8(sp)
    80004b94:	00813023          	sd	s0,0(sp)
    80004b98:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004b9c:	01053583          	ld	a1,16(a0)
    80004ba0:	fffff097          	auipc	ra,0xfffff
    80004ba4:	fe0080e7          	jalr	-32(ra) # 80003b80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004ba8:	00813083          	ld	ra,8(sp)
    80004bac:	00013403          	ld	s0,0(sp)
    80004bb0:	01010113          	addi	sp,sp,16
    80004bb4:	00008067          	ret

0000000080004bb8 <_ZN8Producer3runEv>:
    void run() override {
    80004bb8:	ff010113          	addi	sp,sp,-16
    80004bbc:	00113423          	sd	ra,8(sp)
    80004bc0:	00813023          	sd	s0,0(sp)
    80004bc4:	01010413          	addi	s0,sp,16
        producer(td);
    80004bc8:	01053583          	ld	a1,16(a0)
    80004bcc:	fffff097          	auipc	ra,0xfffff
    80004bd0:	074080e7          	jalr	116(ra) # 80003c40 <_ZN8Producer8producerEPv>
    }
    80004bd4:	00813083          	ld	ra,8(sp)
    80004bd8:	00013403          	ld	s0,0(sp)
    80004bdc:	01010113          	addi	sp,sp,16
    80004be0:	00008067          	ret

0000000080004be4 <_ZN8Consumer3runEv>:
    void run() override {
    80004be4:	ff010113          	addi	sp,sp,-16
    80004be8:	00113423          	sd	ra,8(sp)
    80004bec:	00813023          	sd	s0,0(sp)
    80004bf0:	01010413          	addi	s0,sp,16
        consumer(td);
    80004bf4:	01053583          	ld	a1,16(a0)
    80004bf8:	fffff097          	auipc	ra,0xfffff
    80004bfc:	0dc080e7          	jalr	220(ra) # 80003cd4 <_ZN8Consumer8consumerEPv>
    }
    80004c00:	00813083          	ld	ra,8(sp)
    80004c04:	00013403          	ld	s0,0(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004c10:	fe010113          	addi	sp,sp,-32
    80004c14:	00113c23          	sd	ra,24(sp)
    80004c18:	00813823          	sd	s0,16(sp)
    80004c1c:	00913423          	sd	s1,8(sp)
    80004c20:	01213023          	sd	s2,0(sp)
    80004c24:	02010413          	addi	s0,sp,32
    80004c28:	00050493          	mv	s1,a0
    80004c2c:	00058913          	mv	s2,a1
    80004c30:	0015879b          	addiw	a5,a1,1
    80004c34:	0007851b          	sext.w	a0,a5
    80004c38:	00f4a023          	sw	a5,0(s1)
    80004c3c:	0004a823          	sw	zero,16(s1)
    80004c40:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c44:	00251513          	slli	a0,a0,0x2
    80004c48:	ffffc097          	auipc	ra,0xffffc
    80004c4c:	654080e7          	jalr	1620(ra) # 8000129c <_Z9mem_allocm>
    80004c50:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004c54:	00000593          	li	a1,0
    80004c58:	02048513          	addi	a0,s1,32
    80004c5c:	ffffc097          	auipc	ra,0xffffc
    80004c60:	704080e7          	jalr	1796(ra) # 80001360 <_Z8sem_openPP10kSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004c64:	00090593          	mv	a1,s2
    80004c68:	01848513          	addi	a0,s1,24
    80004c6c:	ffffc097          	auipc	ra,0xffffc
    80004c70:	6f4080e7          	jalr	1780(ra) # 80001360 <_Z8sem_openPP10kSemaphorej>
    sem_open(&mutexHead, 1);
    80004c74:	00100593          	li	a1,1
    80004c78:	02848513          	addi	a0,s1,40
    80004c7c:	ffffc097          	auipc	ra,0xffffc
    80004c80:	6e4080e7          	jalr	1764(ra) # 80001360 <_Z8sem_openPP10kSemaphorej>
    sem_open(&mutexTail, 1);
    80004c84:	00100593          	li	a1,1
    80004c88:	03048513          	addi	a0,s1,48
    80004c8c:	ffffc097          	auipc	ra,0xffffc
    80004c90:	6d4080e7          	jalr	1748(ra) # 80001360 <_Z8sem_openPP10kSemaphorej>
}
    80004c94:	01813083          	ld	ra,24(sp)
    80004c98:	01013403          	ld	s0,16(sp)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	00013903          	ld	s2,0(sp)
    80004ca4:	02010113          	addi	sp,sp,32
    80004ca8:	00008067          	ret

0000000080004cac <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00113c23          	sd	ra,24(sp)
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	01213023          	sd	s2,0(sp)
    80004cc0:	02010413          	addi	s0,sp,32
    80004cc4:	00050493          	mv	s1,a0
    80004cc8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004ccc:	01853503          	ld	a0,24(a0)
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	6e8080e7          	jalr	1768(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>

    sem_wait(mutexTail);
    80004cd8:	0304b503          	ld	a0,48(s1)
    80004cdc:	ffffc097          	auipc	ra,0xffffc
    80004ce0:	6dc080e7          	jalr	1756(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>
    buffer[tail] = val;
    80004ce4:	0084b783          	ld	a5,8(s1)
    80004ce8:	0144a703          	lw	a4,20(s1)
    80004cec:	00271713          	slli	a4,a4,0x2
    80004cf0:	00e787b3          	add	a5,a5,a4
    80004cf4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004cf8:	0144a783          	lw	a5,20(s1)
    80004cfc:	0017879b          	addiw	a5,a5,1
    80004d00:	0004a703          	lw	a4,0(s1)
    80004d04:	02e7e7bb          	remw	a5,a5,a4
    80004d08:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004d0c:	0304b503          	ld	a0,48(s1)
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	6d0080e7          	jalr	1744(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

    sem_signal(itemAvailable);
    80004d18:	0204b503          	ld	a0,32(s1)
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	6c4080e7          	jalr	1732(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

}
    80004d24:	01813083          	ld	ra,24(sp)
    80004d28:	01013403          	ld	s0,16(sp)
    80004d2c:	00813483          	ld	s1,8(sp)
    80004d30:	00013903          	ld	s2,0(sp)
    80004d34:	02010113          	addi	sp,sp,32
    80004d38:	00008067          	ret

0000000080004d3c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004d3c:	fe010113          	addi	sp,sp,-32
    80004d40:	00113c23          	sd	ra,24(sp)
    80004d44:	00813823          	sd	s0,16(sp)
    80004d48:	00913423          	sd	s1,8(sp)
    80004d4c:	01213023          	sd	s2,0(sp)
    80004d50:	02010413          	addi	s0,sp,32
    80004d54:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004d58:	02053503          	ld	a0,32(a0)
    80004d5c:	ffffc097          	auipc	ra,0xffffc
    80004d60:	65c080e7          	jalr	1628(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>

    sem_wait(mutexHead);
    80004d64:	0284b503          	ld	a0,40(s1)
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	650080e7          	jalr	1616(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>

    int ret = buffer[head];
    80004d70:	0084b703          	ld	a4,8(s1)
    80004d74:	0104a783          	lw	a5,16(s1)
    80004d78:	00279693          	slli	a3,a5,0x2
    80004d7c:	00d70733          	add	a4,a4,a3
    80004d80:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004d84:	0017879b          	addiw	a5,a5,1
    80004d88:	0004a703          	lw	a4,0(s1)
    80004d8c:	02e7e7bb          	remw	a5,a5,a4
    80004d90:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004d94:	0284b503          	ld	a0,40(s1)
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	648080e7          	jalr	1608(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

    sem_signal(spaceAvailable);
    80004da0:	0184b503          	ld	a0,24(s1)
    80004da4:	ffffc097          	auipc	ra,0xffffc
    80004da8:	63c080e7          	jalr	1596(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

    return ret;
}
    80004dac:	00090513          	mv	a0,s2
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    80004de0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004de4:	02853503          	ld	a0,40(a0)
    80004de8:	ffffc097          	auipc	ra,0xffffc
    80004dec:	5d0080e7          	jalr	1488(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>
    sem_wait(mutexTail);
    80004df0:	0304b503          	ld	a0,48(s1)
    80004df4:	ffffc097          	auipc	ra,0xffffc
    80004df8:	5c4080e7          	jalr	1476(ra) # 800013b8 <_Z8sem_waitP10kSemaphore>

    if (tail >= head) {
    80004dfc:	0144a783          	lw	a5,20(s1)
    80004e00:	0104a903          	lw	s2,16(s1)
    80004e04:	0327ce63          	blt	a5,s2,80004e40 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004e08:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004e0c:	0304b503          	ld	a0,48(s1)
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	5d0080e7          	jalr	1488(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>
    sem_signal(mutexHead);
    80004e18:	0284b503          	ld	a0,40(s1)
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	5c4080e7          	jalr	1476(ra) # 800013e0 <_Z10sem_signalP10kSemaphore>

    return ret;
}
    80004e24:	00090513          	mv	a0,s2
    80004e28:	01813083          	ld	ra,24(sp)
    80004e2c:	01013403          	ld	s0,16(sp)
    80004e30:	00813483          	ld	s1,8(sp)
    80004e34:	00013903          	ld	s2,0(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret
        ret = cap - head + tail;
    80004e40:	0004a703          	lw	a4,0(s1)
    80004e44:	4127093b          	subw	s2,a4,s2
    80004e48:	00f9093b          	addw	s2,s2,a5
    80004e4c:	fc1ff06f          	j	80004e0c <_ZN6Buffer6getCntEv+0x44>

0000000080004e50 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004e50:	fe010113          	addi	sp,sp,-32
    80004e54:	00113c23          	sd	ra,24(sp)
    80004e58:	00813823          	sd	s0,16(sp)
    80004e5c:	00913423          	sd	s1,8(sp)
    80004e60:	02010413          	addi	s0,sp,32
    80004e64:	00050493          	mv	s1,a0
    putc('\n');
    80004e68:	00a00513          	li	a0,10
    80004e6c:	ffffc097          	auipc	ra,0xffffc
    80004e70:	5e8080e7          	jalr	1512(ra) # 80001454 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004e74:	00003517          	auipc	a0,0x3
    80004e78:	32c50513          	addi	a0,a0,812 # 800081a0 <CONSOLE_STATUS+0x190>
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	ae8080e7          	jalr	-1304(ra) # 80001964 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004e84:	00048513          	mv	a0,s1
    80004e88:	00000097          	auipc	ra,0x0
    80004e8c:	f40080e7          	jalr	-192(ra) # 80004dc8 <_ZN6Buffer6getCntEv>
    80004e90:	02a05c63          	blez	a0,80004ec8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004e94:	0084b783          	ld	a5,8(s1)
    80004e98:	0104a703          	lw	a4,16(s1)
    80004e9c:	00271713          	slli	a4,a4,0x2
    80004ea0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004ea4:	0007c503          	lbu	a0,0(a5)
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	5ac080e7          	jalr	1452(ra) # 80001454 <_Z4putcc>
        head = (head + 1) % cap;
    80004eb0:	0104a783          	lw	a5,16(s1)
    80004eb4:	0017879b          	addiw	a5,a5,1
    80004eb8:	0004a703          	lw	a4,0(s1)
    80004ebc:	02e7e7bb          	remw	a5,a5,a4
    80004ec0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004ec4:	fc1ff06f          	j	80004e84 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004ec8:	02100513          	li	a0,33
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	588080e7          	jalr	1416(ra) # 80001454 <_Z4putcc>
    putc('\n');
    80004ed4:	00a00513          	li	a0,10
    80004ed8:	ffffc097          	auipc	ra,0xffffc
    80004edc:	57c080e7          	jalr	1404(ra) # 80001454 <_Z4putcc>
    mem_free(buffer);
    80004ee0:	0084b503          	ld	a0,8(s1)
    80004ee4:	ffffc097          	auipc	ra,0xffffc
    80004ee8:	3e4080e7          	jalr	996(ra) # 800012c8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004eec:	0204b503          	ld	a0,32(s1)
    80004ef0:	ffffc097          	auipc	ra,0xffffc
    80004ef4:	4a0080e7          	jalr	1184(ra) # 80001390 <_Z9sem_closeP10kSemaphore>
    sem_close(spaceAvailable);
    80004ef8:	0184b503          	ld	a0,24(s1)
    80004efc:	ffffc097          	auipc	ra,0xffffc
    80004f00:	494080e7          	jalr	1172(ra) # 80001390 <_Z9sem_closeP10kSemaphore>
    sem_close(mutexTail);
    80004f04:	0304b503          	ld	a0,48(s1)
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	488080e7          	jalr	1160(ra) # 80001390 <_Z9sem_closeP10kSemaphore>
    sem_close(mutexHead);
    80004f10:	0284b503          	ld	a0,40(s1)
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	47c080e7          	jalr	1148(ra) # 80001390 <_Z9sem_closeP10kSemaphore>
}
    80004f1c:	01813083          	ld	ra,24(sp)
    80004f20:	01013403          	ld	s0,16(sp)
    80004f24:	00813483          	ld	s1,8(sp)
    80004f28:	02010113          	addi	sp,sp,32
    80004f2c:	00008067          	ret

0000000080004f30 <_ZN6BuffernwEm>:

void* Buffer::operator new (size_t n){
    80004f30:	ff010113          	addi	sp,sp,-16
    80004f34:	00113423          	sd	ra,8(sp)
    80004f38:	00813023          	sd	s0,0(sp)
    80004f3c:	01010413          	addi	s0,sp,16
    80004f40:	fff50513          	addi	a0,a0,-1
    80004f44:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    80004f48:	00150513          	addi	a0,a0,1
    80004f4c:	ffffe097          	auipc	ra,0xffffe
    80004f50:	c30080e7          	jalr	-976(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    80004f54:	00813083          	ld	ra,8(sp)
    80004f58:	00013403          	ld	s0,0(sp)
    80004f5c:	01010113          	addi	sp,sp,16
    80004f60:	00008067          	ret

0000000080004f64 <_ZN6BuffernaEm>:

void* Buffer::operator new[] (size_t n){
    80004f64:	ff010113          	addi	sp,sp,-16
    80004f68:	00113423          	sd	ra,8(sp)
    80004f6c:	00813023          	sd	s0,0(sp)
    80004f70:	01010413          	addi	s0,sp,16
    80004f74:	fff50513          	addi	a0,a0,-1
    80004f78:	00655513          	srli	a0,a0,0x6

    n = MemoryAllocator::allocateBytes(n);

    return MemoryAllocator::kmalloc(n);
    80004f7c:	00150513          	addi	a0,a0,1
    80004f80:	ffffe097          	auipc	ra,0xffffe
    80004f84:	bfc080e7          	jalr	-1028(ra) # 80002b7c <_ZN15MemoryAllocator7kmallocEm>
}
    80004f88:	00813083          	ld	ra,8(sp)
    80004f8c:	00013403          	ld	s0,0(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <_ZN6BufferdlEPv>:
void Buffer::operator delete (void* p) noexcept
{
    80004f98:	ff010113          	addi	sp,sp,-16
    80004f9c:	00113423          	sd	ra,8(sp)
    80004fa0:	00813023          	sd	s0,0(sp)
    80004fa4:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004fa8:	ffffe097          	auipc	ra,0xffffe
    80004fac:	c60080e7          	jalr	-928(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004fb0:	00813083          	ld	ra,8(sp)
    80004fb4:	00013403          	ld	s0,0(sp)
    80004fb8:	01010113          	addi	sp,sp,16
    80004fbc:	00008067          	ret

0000000080004fc0 <_ZN6BufferdaEPv>:
void Buffer::operator delete[] (void* p) noexcept
{
    80004fc0:	ff010113          	addi	sp,sp,-16
    80004fc4:	00113423          	sd	ra,8(sp)
    80004fc8:	00813023          	sd	s0,0(sp)
    80004fcc:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004fd0:	ffffe097          	auipc	ra,0xffffe
    80004fd4:	c38080e7          	jalr	-968(ra) # 80002c08 <_ZN15MemoryAllocator5kfreeEPv>
    80004fd8:	00813083          	ld	ra,8(sp)
    80004fdc:	00013403          	ld	s0,0(sp)
    80004fe0:	01010113          	addi	sp,sp,16
    80004fe4:	00008067          	ret

0000000080004fe8 <start>:
    80004fe8:	ff010113          	addi	sp,sp,-16
    80004fec:	00813423          	sd	s0,8(sp)
    80004ff0:	01010413          	addi	s0,sp,16
    80004ff4:	300027f3          	csrr	a5,mstatus
    80004ff8:	ffffe737          	lui	a4,0xffffe
    80004ffc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2b3f>
    80005000:	00e7f7b3          	and	a5,a5,a4
    80005004:	00001737          	lui	a4,0x1
    80005008:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000500c:	00e7e7b3          	or	a5,a5,a4
    80005010:	30079073          	csrw	mstatus,a5
    80005014:	00000797          	auipc	a5,0x0
    80005018:	16078793          	addi	a5,a5,352 # 80005174 <system_main>
    8000501c:	34179073          	csrw	mepc,a5
    80005020:	00000793          	li	a5,0
    80005024:	18079073          	csrw	satp,a5
    80005028:	000107b7          	lui	a5,0x10
    8000502c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005030:	30279073          	csrw	medeleg,a5
    80005034:	30379073          	csrw	mideleg,a5
    80005038:	104027f3          	csrr	a5,sie
    8000503c:	2227e793          	ori	a5,a5,546
    80005040:	10479073          	csrw	sie,a5
    80005044:	fff00793          	li	a5,-1
    80005048:	00a7d793          	srli	a5,a5,0xa
    8000504c:	3b079073          	csrw	pmpaddr0,a5
    80005050:	00f00793          	li	a5,15
    80005054:	3a079073          	csrw	pmpcfg0,a5
    80005058:	f14027f3          	csrr	a5,mhartid
    8000505c:	0200c737          	lui	a4,0x200c
    80005060:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005064:	0007869b          	sext.w	a3,a5
    80005068:	00269713          	slli	a4,a3,0x2
    8000506c:	000f4637          	lui	a2,0xf4
    80005070:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005074:	00d70733          	add	a4,a4,a3
    80005078:	0037979b          	slliw	a5,a5,0x3
    8000507c:	020046b7          	lui	a3,0x2004
    80005080:	00d787b3          	add	a5,a5,a3
    80005084:	00c585b3          	add	a1,a1,a2
    80005088:	00371693          	slli	a3,a4,0x3
    8000508c:	00006717          	auipc	a4,0x6
    80005090:	9d470713          	addi	a4,a4,-1580 # 8000aa60 <timer_scratch>
    80005094:	00b7b023          	sd	a1,0(a5)
    80005098:	00d70733          	add	a4,a4,a3
    8000509c:	00f73c23          	sd	a5,24(a4)
    800050a0:	02c73023          	sd	a2,32(a4)
    800050a4:	34071073          	csrw	mscratch,a4
    800050a8:	00000797          	auipc	a5,0x0
    800050ac:	6e878793          	addi	a5,a5,1768 # 80005790 <timervec>
    800050b0:	30579073          	csrw	mtvec,a5
    800050b4:	300027f3          	csrr	a5,mstatus
    800050b8:	0087e793          	ori	a5,a5,8
    800050bc:	30079073          	csrw	mstatus,a5
    800050c0:	304027f3          	csrr	a5,mie
    800050c4:	0807e793          	ori	a5,a5,128
    800050c8:	30479073          	csrw	mie,a5
    800050cc:	f14027f3          	csrr	a5,mhartid
    800050d0:	0007879b          	sext.w	a5,a5
    800050d4:	00078213          	mv	tp,a5
    800050d8:	30200073          	mret
    800050dc:	00813403          	ld	s0,8(sp)
    800050e0:	01010113          	addi	sp,sp,16
    800050e4:	00008067          	ret

00000000800050e8 <timerinit>:
    800050e8:	ff010113          	addi	sp,sp,-16
    800050ec:	00813423          	sd	s0,8(sp)
    800050f0:	01010413          	addi	s0,sp,16
    800050f4:	f14027f3          	csrr	a5,mhartid
    800050f8:	0200c737          	lui	a4,0x200c
    800050fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005100:	0007869b          	sext.w	a3,a5
    80005104:	00269713          	slli	a4,a3,0x2
    80005108:	000f4637          	lui	a2,0xf4
    8000510c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005110:	00d70733          	add	a4,a4,a3
    80005114:	0037979b          	slliw	a5,a5,0x3
    80005118:	020046b7          	lui	a3,0x2004
    8000511c:	00d787b3          	add	a5,a5,a3
    80005120:	00c585b3          	add	a1,a1,a2
    80005124:	00371693          	slli	a3,a4,0x3
    80005128:	00006717          	auipc	a4,0x6
    8000512c:	93870713          	addi	a4,a4,-1736 # 8000aa60 <timer_scratch>
    80005130:	00b7b023          	sd	a1,0(a5)
    80005134:	00d70733          	add	a4,a4,a3
    80005138:	00f73c23          	sd	a5,24(a4)
    8000513c:	02c73023          	sd	a2,32(a4)
    80005140:	34071073          	csrw	mscratch,a4
    80005144:	00000797          	auipc	a5,0x0
    80005148:	64c78793          	addi	a5,a5,1612 # 80005790 <timervec>
    8000514c:	30579073          	csrw	mtvec,a5
    80005150:	300027f3          	csrr	a5,mstatus
    80005154:	0087e793          	ori	a5,a5,8
    80005158:	30079073          	csrw	mstatus,a5
    8000515c:	304027f3          	csrr	a5,mie
    80005160:	0807e793          	ori	a5,a5,128
    80005164:	30479073          	csrw	mie,a5
    80005168:	00813403          	ld	s0,8(sp)
    8000516c:	01010113          	addi	sp,sp,16
    80005170:	00008067          	ret

0000000080005174 <system_main>:
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00813823          	sd	s0,16(sp)
    8000517c:	00913423          	sd	s1,8(sp)
    80005180:	00113c23          	sd	ra,24(sp)
    80005184:	02010413          	addi	s0,sp,32
    80005188:	00000097          	auipc	ra,0x0
    8000518c:	0c4080e7          	jalr	196(ra) # 8000524c <cpuid>
    80005190:	00005497          	auipc	s1,0x5
    80005194:	01048493          	addi	s1,s1,16 # 8000a1a0 <started>
    80005198:	02050263          	beqz	a0,800051bc <system_main+0x48>
    8000519c:	0004a783          	lw	a5,0(s1)
    800051a0:	0007879b          	sext.w	a5,a5
    800051a4:	fe078ce3          	beqz	a5,8000519c <system_main+0x28>
    800051a8:	0ff0000f          	fence
    800051ac:	00003517          	auipc	a0,0x3
    800051b0:	27450513          	addi	a0,a0,628 # 80008420 <CONSOLE_STATUS+0x410>
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	a78080e7          	jalr	-1416(ra) # 80005c2c <panic>
    800051bc:	00001097          	auipc	ra,0x1
    800051c0:	9cc080e7          	jalr	-1588(ra) # 80005b88 <consoleinit>
    800051c4:	00001097          	auipc	ra,0x1
    800051c8:	158080e7          	jalr	344(ra) # 8000631c <printfinit>
    800051cc:	00003517          	auipc	a0,0x3
    800051d0:	12c50513          	addi	a0,a0,300 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800051d4:	00001097          	auipc	ra,0x1
    800051d8:	ab4080e7          	jalr	-1356(ra) # 80005c88 <__printf>
    800051dc:	00003517          	auipc	a0,0x3
    800051e0:	21450513          	addi	a0,a0,532 # 800083f0 <CONSOLE_STATUS+0x3e0>
    800051e4:	00001097          	auipc	ra,0x1
    800051e8:	aa4080e7          	jalr	-1372(ra) # 80005c88 <__printf>
    800051ec:	00003517          	auipc	a0,0x3
    800051f0:	10c50513          	addi	a0,a0,268 # 800082f8 <CONSOLE_STATUS+0x2e8>
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	a94080e7          	jalr	-1388(ra) # 80005c88 <__printf>
    800051fc:	00001097          	auipc	ra,0x1
    80005200:	4ac080e7          	jalr	1196(ra) # 800066a8 <kinit>
    80005204:	00000097          	auipc	ra,0x0
    80005208:	148080e7          	jalr	328(ra) # 8000534c <trapinit>
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	16c080e7          	jalr	364(ra) # 80005378 <trapinithart>
    80005214:	00000097          	auipc	ra,0x0
    80005218:	5bc080e7          	jalr	1468(ra) # 800057d0 <plicinit>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	5dc080e7          	jalr	1500(ra) # 800057f8 <plicinithart>
    80005224:	00000097          	auipc	ra,0x0
    80005228:	078080e7          	jalr	120(ra) # 8000529c <userinit>
    8000522c:	0ff0000f          	fence
    80005230:	00100793          	li	a5,1
    80005234:	00003517          	auipc	a0,0x3
    80005238:	1d450513          	addi	a0,a0,468 # 80008408 <CONSOLE_STATUS+0x3f8>
    8000523c:	00f4a023          	sw	a5,0(s1)
    80005240:	00001097          	auipc	ra,0x1
    80005244:	a48080e7          	jalr	-1464(ra) # 80005c88 <__printf>
    80005248:	0000006f          	j	80005248 <system_main+0xd4>

000000008000524c <cpuid>:
    8000524c:	ff010113          	addi	sp,sp,-16
    80005250:	00813423          	sd	s0,8(sp)
    80005254:	01010413          	addi	s0,sp,16
    80005258:	00020513          	mv	a0,tp
    8000525c:	00813403          	ld	s0,8(sp)
    80005260:	0005051b          	sext.w	a0,a0
    80005264:	01010113          	addi	sp,sp,16
    80005268:	00008067          	ret

000000008000526c <mycpu>:
    8000526c:	ff010113          	addi	sp,sp,-16
    80005270:	00813423          	sd	s0,8(sp)
    80005274:	01010413          	addi	s0,sp,16
    80005278:	00020793          	mv	a5,tp
    8000527c:	00813403          	ld	s0,8(sp)
    80005280:	0007879b          	sext.w	a5,a5
    80005284:	00779793          	slli	a5,a5,0x7
    80005288:	00007517          	auipc	a0,0x7
    8000528c:	80850513          	addi	a0,a0,-2040 # 8000ba90 <cpus>
    80005290:	00f50533          	add	a0,a0,a5
    80005294:	01010113          	addi	sp,sp,16
    80005298:	00008067          	ret

000000008000529c <userinit>:
    8000529c:	ff010113          	addi	sp,sp,-16
    800052a0:	00813423          	sd	s0,8(sp)
    800052a4:	01010413          	addi	s0,sp,16
    800052a8:	00813403          	ld	s0,8(sp)
    800052ac:	01010113          	addi	sp,sp,16
    800052b0:	ffffd317          	auipc	t1,0xffffd
    800052b4:	a8030067          	jr	-1408(t1) # 80001d30 <main>

00000000800052b8 <either_copyout>:
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00813023          	sd	s0,0(sp)
    800052c0:	00113423          	sd	ra,8(sp)
    800052c4:	01010413          	addi	s0,sp,16
    800052c8:	02051663          	bnez	a0,800052f4 <either_copyout+0x3c>
    800052cc:	00058513          	mv	a0,a1
    800052d0:	00060593          	mv	a1,a2
    800052d4:	0006861b          	sext.w	a2,a3
    800052d8:	00002097          	auipc	ra,0x2
    800052dc:	c5c080e7          	jalr	-932(ra) # 80006f34 <__memmove>
    800052e0:	00813083          	ld	ra,8(sp)
    800052e4:	00013403          	ld	s0,0(sp)
    800052e8:	00000513          	li	a0,0
    800052ec:	01010113          	addi	sp,sp,16
    800052f0:	00008067          	ret
    800052f4:	00003517          	auipc	a0,0x3
    800052f8:	15450513          	addi	a0,a0,340 # 80008448 <CONSOLE_STATUS+0x438>
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	930080e7          	jalr	-1744(ra) # 80005c2c <panic>

0000000080005304 <either_copyin>:
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00813023          	sd	s0,0(sp)
    8000530c:	00113423          	sd	ra,8(sp)
    80005310:	01010413          	addi	s0,sp,16
    80005314:	02059463          	bnez	a1,8000533c <either_copyin+0x38>
    80005318:	00060593          	mv	a1,a2
    8000531c:	0006861b          	sext.w	a2,a3
    80005320:	00002097          	auipc	ra,0x2
    80005324:	c14080e7          	jalr	-1004(ra) # 80006f34 <__memmove>
    80005328:	00813083          	ld	ra,8(sp)
    8000532c:	00013403          	ld	s0,0(sp)
    80005330:	00000513          	li	a0,0
    80005334:	01010113          	addi	sp,sp,16
    80005338:	00008067          	ret
    8000533c:	00003517          	auipc	a0,0x3
    80005340:	13450513          	addi	a0,a0,308 # 80008470 <CONSOLE_STATUS+0x460>
    80005344:	00001097          	auipc	ra,0x1
    80005348:	8e8080e7          	jalr	-1816(ra) # 80005c2c <panic>

000000008000534c <trapinit>:
    8000534c:	ff010113          	addi	sp,sp,-16
    80005350:	00813423          	sd	s0,8(sp)
    80005354:	01010413          	addi	s0,sp,16
    80005358:	00813403          	ld	s0,8(sp)
    8000535c:	00003597          	auipc	a1,0x3
    80005360:	13c58593          	addi	a1,a1,316 # 80008498 <CONSOLE_STATUS+0x488>
    80005364:	00006517          	auipc	a0,0x6
    80005368:	7ac50513          	addi	a0,a0,1964 # 8000bb10 <tickslock>
    8000536c:	01010113          	addi	sp,sp,16
    80005370:	00001317          	auipc	t1,0x1
    80005374:	5c830067          	jr	1480(t1) # 80006938 <initlock>

0000000080005378 <trapinithart>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813423          	sd	s0,8(sp)
    80005380:	01010413          	addi	s0,sp,16
    80005384:	00000797          	auipc	a5,0x0
    80005388:	2fc78793          	addi	a5,a5,764 # 80005680 <kernelvec>
    8000538c:	10579073          	csrw	stvec,a5
    80005390:	00813403          	ld	s0,8(sp)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <usertrap>:
    8000539c:	ff010113          	addi	sp,sp,-16
    800053a0:	00813423          	sd	s0,8(sp)
    800053a4:	01010413          	addi	s0,sp,16
    800053a8:	00813403          	ld	s0,8(sp)
    800053ac:	01010113          	addi	sp,sp,16
    800053b0:	00008067          	ret

00000000800053b4 <usertrapret>:
    800053b4:	ff010113          	addi	sp,sp,-16
    800053b8:	00813423          	sd	s0,8(sp)
    800053bc:	01010413          	addi	s0,sp,16
    800053c0:	00813403          	ld	s0,8(sp)
    800053c4:	01010113          	addi	sp,sp,16
    800053c8:	00008067          	ret

00000000800053cc <kerneltrap>:
    800053cc:	fe010113          	addi	sp,sp,-32
    800053d0:	00813823          	sd	s0,16(sp)
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00913423          	sd	s1,8(sp)
    800053dc:	02010413          	addi	s0,sp,32
    800053e0:	142025f3          	csrr	a1,scause
    800053e4:	100027f3          	csrr	a5,sstatus
    800053e8:	0027f793          	andi	a5,a5,2
    800053ec:	10079c63          	bnez	a5,80005504 <kerneltrap+0x138>
    800053f0:	142027f3          	csrr	a5,scause
    800053f4:	0207ce63          	bltz	a5,80005430 <kerneltrap+0x64>
    800053f8:	00003517          	auipc	a0,0x3
    800053fc:	0e850513          	addi	a0,a0,232 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005400:	00001097          	auipc	ra,0x1
    80005404:	888080e7          	jalr	-1912(ra) # 80005c88 <__printf>
    80005408:	141025f3          	csrr	a1,sepc
    8000540c:	14302673          	csrr	a2,stval
    80005410:	00003517          	auipc	a0,0x3
    80005414:	0e050513          	addi	a0,a0,224 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80005418:	00001097          	auipc	ra,0x1
    8000541c:	870080e7          	jalr	-1936(ra) # 80005c88 <__printf>
    80005420:	00003517          	auipc	a0,0x3
    80005424:	0e850513          	addi	a0,a0,232 # 80008508 <CONSOLE_STATUS+0x4f8>
    80005428:	00001097          	auipc	ra,0x1
    8000542c:	804080e7          	jalr	-2044(ra) # 80005c2c <panic>
    80005430:	0ff7f713          	andi	a4,a5,255
    80005434:	00900693          	li	a3,9
    80005438:	04d70063          	beq	a4,a3,80005478 <kerneltrap+0xac>
    8000543c:	fff00713          	li	a4,-1
    80005440:	03f71713          	slli	a4,a4,0x3f
    80005444:	00170713          	addi	a4,a4,1
    80005448:	fae798e3          	bne	a5,a4,800053f8 <kerneltrap+0x2c>
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	e00080e7          	jalr	-512(ra) # 8000524c <cpuid>
    80005454:	06050663          	beqz	a0,800054c0 <kerneltrap+0xf4>
    80005458:	144027f3          	csrr	a5,sip
    8000545c:	ffd7f793          	andi	a5,a5,-3
    80005460:	14479073          	csrw	sip,a5
    80005464:	01813083          	ld	ra,24(sp)
    80005468:	01013403          	ld	s0,16(sp)
    8000546c:	00813483          	ld	s1,8(sp)
    80005470:	02010113          	addi	sp,sp,32
    80005474:	00008067          	ret
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	3cc080e7          	jalr	972(ra) # 80005844 <plic_claim>
    80005480:	00a00793          	li	a5,10
    80005484:	00050493          	mv	s1,a0
    80005488:	06f50863          	beq	a0,a5,800054f8 <kerneltrap+0x12c>
    8000548c:	fc050ce3          	beqz	a0,80005464 <kerneltrap+0x98>
    80005490:	00050593          	mv	a1,a0
    80005494:	00003517          	auipc	a0,0x3
    80005498:	02c50513          	addi	a0,a0,44 # 800084c0 <CONSOLE_STATUS+0x4b0>
    8000549c:	00000097          	auipc	ra,0x0
    800054a0:	7ec080e7          	jalr	2028(ra) # 80005c88 <__printf>
    800054a4:	01013403          	ld	s0,16(sp)
    800054a8:	01813083          	ld	ra,24(sp)
    800054ac:	00048513          	mv	a0,s1
    800054b0:	00813483          	ld	s1,8(sp)
    800054b4:	02010113          	addi	sp,sp,32
    800054b8:	00000317          	auipc	t1,0x0
    800054bc:	3c430067          	jr	964(t1) # 8000587c <plic_complete>
    800054c0:	00006517          	auipc	a0,0x6
    800054c4:	65050513          	addi	a0,a0,1616 # 8000bb10 <tickslock>
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	494080e7          	jalr	1172(ra) # 8000695c <acquire>
    800054d0:	00005717          	auipc	a4,0x5
    800054d4:	cd470713          	addi	a4,a4,-812 # 8000a1a4 <ticks>
    800054d8:	00072783          	lw	a5,0(a4)
    800054dc:	00006517          	auipc	a0,0x6
    800054e0:	63450513          	addi	a0,a0,1588 # 8000bb10 <tickslock>
    800054e4:	0017879b          	addiw	a5,a5,1
    800054e8:	00f72023          	sw	a5,0(a4)
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	53c080e7          	jalr	1340(ra) # 80006a28 <release>
    800054f4:	f65ff06f          	j	80005458 <kerneltrap+0x8c>
    800054f8:	00001097          	auipc	ra,0x1
    800054fc:	098080e7          	jalr	152(ra) # 80006590 <uartintr>
    80005500:	fa5ff06f          	j	800054a4 <kerneltrap+0xd8>
    80005504:	00003517          	auipc	a0,0x3
    80005508:	f9c50513          	addi	a0,a0,-100 # 800084a0 <CONSOLE_STATUS+0x490>
    8000550c:	00000097          	auipc	ra,0x0
    80005510:	720080e7          	jalr	1824(ra) # 80005c2c <panic>

0000000080005514 <clockintr>:
    80005514:	fe010113          	addi	sp,sp,-32
    80005518:	00813823          	sd	s0,16(sp)
    8000551c:	00913423          	sd	s1,8(sp)
    80005520:	00113c23          	sd	ra,24(sp)
    80005524:	02010413          	addi	s0,sp,32
    80005528:	00006497          	auipc	s1,0x6
    8000552c:	5e848493          	addi	s1,s1,1512 # 8000bb10 <tickslock>
    80005530:	00048513          	mv	a0,s1
    80005534:	00001097          	auipc	ra,0x1
    80005538:	428080e7          	jalr	1064(ra) # 8000695c <acquire>
    8000553c:	00005717          	auipc	a4,0x5
    80005540:	c6870713          	addi	a4,a4,-920 # 8000a1a4 <ticks>
    80005544:	00072783          	lw	a5,0(a4)
    80005548:	01013403          	ld	s0,16(sp)
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	00048513          	mv	a0,s1
    80005554:	0017879b          	addiw	a5,a5,1
    80005558:	00813483          	ld	s1,8(sp)
    8000555c:	00f72023          	sw	a5,0(a4)
    80005560:	02010113          	addi	sp,sp,32
    80005564:	00001317          	auipc	t1,0x1
    80005568:	4c430067          	jr	1220(t1) # 80006a28 <release>

000000008000556c <devintr>:
    8000556c:	142027f3          	csrr	a5,scause
    80005570:	00000513          	li	a0,0
    80005574:	0007c463          	bltz	a5,8000557c <devintr+0x10>
    80005578:	00008067          	ret
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	0ff7f713          	andi	a4,a5,255
    80005594:	00900693          	li	a3,9
    80005598:	04d70c63          	beq	a4,a3,800055f0 <devintr+0x84>
    8000559c:	fff00713          	li	a4,-1
    800055a0:	03f71713          	slli	a4,a4,0x3f
    800055a4:	00170713          	addi	a4,a4,1
    800055a8:	00e78c63          	beq	a5,a4,800055c0 <devintr+0x54>
    800055ac:	01813083          	ld	ra,24(sp)
    800055b0:	01013403          	ld	s0,16(sp)
    800055b4:	00813483          	ld	s1,8(sp)
    800055b8:	02010113          	addi	sp,sp,32
    800055bc:	00008067          	ret
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	c8c080e7          	jalr	-884(ra) # 8000524c <cpuid>
    800055c8:	06050663          	beqz	a0,80005634 <devintr+0xc8>
    800055cc:	144027f3          	csrr	a5,sip
    800055d0:	ffd7f793          	andi	a5,a5,-3
    800055d4:	14479073          	csrw	sip,a5
    800055d8:	01813083          	ld	ra,24(sp)
    800055dc:	01013403          	ld	s0,16(sp)
    800055e0:	00813483          	ld	s1,8(sp)
    800055e4:	00200513          	li	a0,2
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret
    800055f0:	00000097          	auipc	ra,0x0
    800055f4:	254080e7          	jalr	596(ra) # 80005844 <plic_claim>
    800055f8:	00a00793          	li	a5,10
    800055fc:	00050493          	mv	s1,a0
    80005600:	06f50663          	beq	a0,a5,8000566c <devintr+0x100>
    80005604:	00100513          	li	a0,1
    80005608:	fa0482e3          	beqz	s1,800055ac <devintr+0x40>
    8000560c:	00048593          	mv	a1,s1
    80005610:	00003517          	auipc	a0,0x3
    80005614:	eb050513          	addi	a0,a0,-336 # 800084c0 <CONSOLE_STATUS+0x4b0>
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	670080e7          	jalr	1648(ra) # 80005c88 <__printf>
    80005620:	00048513          	mv	a0,s1
    80005624:	00000097          	auipc	ra,0x0
    80005628:	258080e7          	jalr	600(ra) # 8000587c <plic_complete>
    8000562c:	00100513          	li	a0,1
    80005630:	f7dff06f          	j	800055ac <devintr+0x40>
    80005634:	00006517          	auipc	a0,0x6
    80005638:	4dc50513          	addi	a0,a0,1244 # 8000bb10 <tickslock>
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	320080e7          	jalr	800(ra) # 8000695c <acquire>
    80005644:	00005717          	auipc	a4,0x5
    80005648:	b6070713          	addi	a4,a4,-1184 # 8000a1a4 <ticks>
    8000564c:	00072783          	lw	a5,0(a4)
    80005650:	00006517          	auipc	a0,0x6
    80005654:	4c050513          	addi	a0,a0,1216 # 8000bb10 <tickslock>
    80005658:	0017879b          	addiw	a5,a5,1
    8000565c:	00f72023          	sw	a5,0(a4)
    80005660:	00001097          	auipc	ra,0x1
    80005664:	3c8080e7          	jalr	968(ra) # 80006a28 <release>
    80005668:	f65ff06f          	j	800055cc <devintr+0x60>
    8000566c:	00001097          	auipc	ra,0x1
    80005670:	f24080e7          	jalr	-220(ra) # 80006590 <uartintr>
    80005674:	fadff06f          	j	80005620 <devintr+0xb4>
	...

0000000080005680 <kernelvec>:
    80005680:	f0010113          	addi	sp,sp,-256
    80005684:	00113023          	sd	ra,0(sp)
    80005688:	00213423          	sd	sp,8(sp)
    8000568c:	00313823          	sd	gp,16(sp)
    80005690:	00413c23          	sd	tp,24(sp)
    80005694:	02513023          	sd	t0,32(sp)
    80005698:	02613423          	sd	t1,40(sp)
    8000569c:	02713823          	sd	t2,48(sp)
    800056a0:	02813c23          	sd	s0,56(sp)
    800056a4:	04913023          	sd	s1,64(sp)
    800056a8:	04a13423          	sd	a0,72(sp)
    800056ac:	04b13823          	sd	a1,80(sp)
    800056b0:	04c13c23          	sd	a2,88(sp)
    800056b4:	06d13023          	sd	a3,96(sp)
    800056b8:	06e13423          	sd	a4,104(sp)
    800056bc:	06f13823          	sd	a5,112(sp)
    800056c0:	07013c23          	sd	a6,120(sp)
    800056c4:	09113023          	sd	a7,128(sp)
    800056c8:	09213423          	sd	s2,136(sp)
    800056cc:	09313823          	sd	s3,144(sp)
    800056d0:	09413c23          	sd	s4,152(sp)
    800056d4:	0b513023          	sd	s5,160(sp)
    800056d8:	0b613423          	sd	s6,168(sp)
    800056dc:	0b713823          	sd	s7,176(sp)
    800056e0:	0b813c23          	sd	s8,184(sp)
    800056e4:	0d913023          	sd	s9,192(sp)
    800056e8:	0da13423          	sd	s10,200(sp)
    800056ec:	0db13823          	sd	s11,208(sp)
    800056f0:	0dc13c23          	sd	t3,216(sp)
    800056f4:	0fd13023          	sd	t4,224(sp)
    800056f8:	0fe13423          	sd	t5,232(sp)
    800056fc:	0ff13823          	sd	t6,240(sp)
    80005700:	ccdff0ef          	jal	ra,800053cc <kerneltrap>
    80005704:	00013083          	ld	ra,0(sp)
    80005708:	00813103          	ld	sp,8(sp)
    8000570c:	01013183          	ld	gp,16(sp)
    80005710:	02013283          	ld	t0,32(sp)
    80005714:	02813303          	ld	t1,40(sp)
    80005718:	03013383          	ld	t2,48(sp)
    8000571c:	03813403          	ld	s0,56(sp)
    80005720:	04013483          	ld	s1,64(sp)
    80005724:	04813503          	ld	a0,72(sp)
    80005728:	05013583          	ld	a1,80(sp)
    8000572c:	05813603          	ld	a2,88(sp)
    80005730:	06013683          	ld	a3,96(sp)
    80005734:	06813703          	ld	a4,104(sp)
    80005738:	07013783          	ld	a5,112(sp)
    8000573c:	07813803          	ld	a6,120(sp)
    80005740:	08013883          	ld	a7,128(sp)
    80005744:	08813903          	ld	s2,136(sp)
    80005748:	09013983          	ld	s3,144(sp)
    8000574c:	09813a03          	ld	s4,152(sp)
    80005750:	0a013a83          	ld	s5,160(sp)
    80005754:	0a813b03          	ld	s6,168(sp)
    80005758:	0b013b83          	ld	s7,176(sp)
    8000575c:	0b813c03          	ld	s8,184(sp)
    80005760:	0c013c83          	ld	s9,192(sp)
    80005764:	0c813d03          	ld	s10,200(sp)
    80005768:	0d013d83          	ld	s11,208(sp)
    8000576c:	0d813e03          	ld	t3,216(sp)
    80005770:	0e013e83          	ld	t4,224(sp)
    80005774:	0e813f03          	ld	t5,232(sp)
    80005778:	0f013f83          	ld	t6,240(sp)
    8000577c:	10010113          	addi	sp,sp,256
    80005780:	10200073          	sret
    80005784:	00000013          	nop
    80005788:	00000013          	nop
    8000578c:	00000013          	nop

0000000080005790 <timervec>:
    80005790:	34051573          	csrrw	a0,mscratch,a0
    80005794:	00b53023          	sd	a1,0(a0)
    80005798:	00c53423          	sd	a2,8(a0)
    8000579c:	00d53823          	sd	a3,16(a0)
    800057a0:	01853583          	ld	a1,24(a0)
    800057a4:	02053603          	ld	a2,32(a0)
    800057a8:	0005b683          	ld	a3,0(a1)
    800057ac:	00c686b3          	add	a3,a3,a2
    800057b0:	00d5b023          	sd	a3,0(a1)
    800057b4:	00200593          	li	a1,2
    800057b8:	14459073          	csrw	sip,a1
    800057bc:	01053683          	ld	a3,16(a0)
    800057c0:	00853603          	ld	a2,8(a0)
    800057c4:	00053583          	ld	a1,0(a0)
    800057c8:	34051573          	csrrw	a0,mscratch,a0
    800057cc:	30200073          	mret

00000000800057d0 <plicinit>:
    800057d0:	ff010113          	addi	sp,sp,-16
    800057d4:	00813423          	sd	s0,8(sp)
    800057d8:	01010413          	addi	s0,sp,16
    800057dc:	00813403          	ld	s0,8(sp)
    800057e0:	0c0007b7          	lui	a5,0xc000
    800057e4:	00100713          	li	a4,1
    800057e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800057ec:	00e7a223          	sw	a4,4(a5)
    800057f0:	01010113          	addi	sp,sp,16
    800057f4:	00008067          	ret

00000000800057f8 <plicinithart>:
    800057f8:	ff010113          	addi	sp,sp,-16
    800057fc:	00813023          	sd	s0,0(sp)
    80005800:	00113423          	sd	ra,8(sp)
    80005804:	01010413          	addi	s0,sp,16
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	a44080e7          	jalr	-1468(ra) # 8000524c <cpuid>
    80005810:	0085171b          	slliw	a4,a0,0x8
    80005814:	0c0027b7          	lui	a5,0xc002
    80005818:	00e787b3          	add	a5,a5,a4
    8000581c:	40200713          	li	a4,1026
    80005820:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005824:	00813083          	ld	ra,8(sp)
    80005828:	00013403          	ld	s0,0(sp)
    8000582c:	00d5151b          	slliw	a0,a0,0xd
    80005830:	0c2017b7          	lui	a5,0xc201
    80005834:	00a78533          	add	a0,a5,a0
    80005838:	00052023          	sw	zero,0(a0)
    8000583c:	01010113          	addi	sp,sp,16
    80005840:	00008067          	ret

0000000080005844 <plic_claim>:
    80005844:	ff010113          	addi	sp,sp,-16
    80005848:	00813023          	sd	s0,0(sp)
    8000584c:	00113423          	sd	ra,8(sp)
    80005850:	01010413          	addi	s0,sp,16
    80005854:	00000097          	auipc	ra,0x0
    80005858:	9f8080e7          	jalr	-1544(ra) # 8000524c <cpuid>
    8000585c:	00813083          	ld	ra,8(sp)
    80005860:	00013403          	ld	s0,0(sp)
    80005864:	00d5151b          	slliw	a0,a0,0xd
    80005868:	0c2017b7          	lui	a5,0xc201
    8000586c:	00a78533          	add	a0,a5,a0
    80005870:	00452503          	lw	a0,4(a0)
    80005874:	01010113          	addi	sp,sp,16
    80005878:	00008067          	ret

000000008000587c <plic_complete>:
    8000587c:	fe010113          	addi	sp,sp,-32
    80005880:	00813823          	sd	s0,16(sp)
    80005884:	00913423          	sd	s1,8(sp)
    80005888:	00113c23          	sd	ra,24(sp)
    8000588c:	02010413          	addi	s0,sp,32
    80005890:	00050493          	mv	s1,a0
    80005894:	00000097          	auipc	ra,0x0
    80005898:	9b8080e7          	jalr	-1608(ra) # 8000524c <cpuid>
    8000589c:	01813083          	ld	ra,24(sp)
    800058a0:	01013403          	ld	s0,16(sp)
    800058a4:	00d5179b          	slliw	a5,a0,0xd
    800058a8:	0c201737          	lui	a4,0xc201
    800058ac:	00f707b3          	add	a5,a4,a5
    800058b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800058b4:	00813483          	ld	s1,8(sp)
    800058b8:	02010113          	addi	sp,sp,32
    800058bc:	00008067          	ret

00000000800058c0 <consolewrite>:
    800058c0:	fb010113          	addi	sp,sp,-80
    800058c4:	04813023          	sd	s0,64(sp)
    800058c8:	04113423          	sd	ra,72(sp)
    800058cc:	02913c23          	sd	s1,56(sp)
    800058d0:	03213823          	sd	s2,48(sp)
    800058d4:	03313423          	sd	s3,40(sp)
    800058d8:	03413023          	sd	s4,32(sp)
    800058dc:	01513c23          	sd	s5,24(sp)
    800058e0:	05010413          	addi	s0,sp,80
    800058e4:	06c05c63          	blez	a2,8000595c <consolewrite+0x9c>
    800058e8:	00060993          	mv	s3,a2
    800058ec:	00050a13          	mv	s4,a0
    800058f0:	00058493          	mv	s1,a1
    800058f4:	00000913          	li	s2,0
    800058f8:	fff00a93          	li	s5,-1
    800058fc:	01c0006f          	j	80005918 <consolewrite+0x58>
    80005900:	fbf44503          	lbu	a0,-65(s0)
    80005904:	0019091b          	addiw	s2,s2,1
    80005908:	00148493          	addi	s1,s1,1
    8000590c:	00001097          	auipc	ra,0x1
    80005910:	a9c080e7          	jalr	-1380(ra) # 800063a8 <uartputc>
    80005914:	03298063          	beq	s3,s2,80005934 <consolewrite+0x74>
    80005918:	00048613          	mv	a2,s1
    8000591c:	00100693          	li	a3,1
    80005920:	000a0593          	mv	a1,s4
    80005924:	fbf40513          	addi	a0,s0,-65
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	9dc080e7          	jalr	-1572(ra) # 80005304 <either_copyin>
    80005930:	fd5518e3          	bne	a0,s5,80005900 <consolewrite+0x40>
    80005934:	04813083          	ld	ra,72(sp)
    80005938:	04013403          	ld	s0,64(sp)
    8000593c:	03813483          	ld	s1,56(sp)
    80005940:	02813983          	ld	s3,40(sp)
    80005944:	02013a03          	ld	s4,32(sp)
    80005948:	01813a83          	ld	s5,24(sp)
    8000594c:	00090513          	mv	a0,s2
    80005950:	03013903          	ld	s2,48(sp)
    80005954:	05010113          	addi	sp,sp,80
    80005958:	00008067          	ret
    8000595c:	00000913          	li	s2,0
    80005960:	fd5ff06f          	j	80005934 <consolewrite+0x74>

0000000080005964 <consoleread>:
    80005964:	f9010113          	addi	sp,sp,-112
    80005968:	06813023          	sd	s0,96(sp)
    8000596c:	04913c23          	sd	s1,88(sp)
    80005970:	05213823          	sd	s2,80(sp)
    80005974:	05313423          	sd	s3,72(sp)
    80005978:	05413023          	sd	s4,64(sp)
    8000597c:	03513c23          	sd	s5,56(sp)
    80005980:	03613823          	sd	s6,48(sp)
    80005984:	03713423          	sd	s7,40(sp)
    80005988:	03813023          	sd	s8,32(sp)
    8000598c:	06113423          	sd	ra,104(sp)
    80005990:	01913c23          	sd	s9,24(sp)
    80005994:	07010413          	addi	s0,sp,112
    80005998:	00060b93          	mv	s7,a2
    8000599c:	00050913          	mv	s2,a0
    800059a0:	00058c13          	mv	s8,a1
    800059a4:	00060b1b          	sext.w	s6,a2
    800059a8:	00006497          	auipc	s1,0x6
    800059ac:	19048493          	addi	s1,s1,400 # 8000bb38 <cons>
    800059b0:	00400993          	li	s3,4
    800059b4:	fff00a13          	li	s4,-1
    800059b8:	00a00a93          	li	s5,10
    800059bc:	05705e63          	blez	s7,80005a18 <consoleread+0xb4>
    800059c0:	09c4a703          	lw	a4,156(s1)
    800059c4:	0984a783          	lw	a5,152(s1)
    800059c8:	0007071b          	sext.w	a4,a4
    800059cc:	08e78463          	beq	a5,a4,80005a54 <consoleread+0xf0>
    800059d0:	07f7f713          	andi	a4,a5,127
    800059d4:	00e48733          	add	a4,s1,a4
    800059d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800059dc:	0017869b          	addiw	a3,a5,1
    800059e0:	08d4ac23          	sw	a3,152(s1)
    800059e4:	00070c9b          	sext.w	s9,a4
    800059e8:	0b370663          	beq	a4,s3,80005a94 <consoleread+0x130>
    800059ec:	00100693          	li	a3,1
    800059f0:	f9f40613          	addi	a2,s0,-97
    800059f4:	000c0593          	mv	a1,s8
    800059f8:	00090513          	mv	a0,s2
    800059fc:	f8e40fa3          	sb	a4,-97(s0)
    80005a00:	00000097          	auipc	ra,0x0
    80005a04:	8b8080e7          	jalr	-1864(ra) # 800052b8 <either_copyout>
    80005a08:	01450863          	beq	a0,s4,80005a18 <consoleread+0xb4>
    80005a0c:	001c0c13          	addi	s8,s8,1
    80005a10:	fffb8b9b          	addiw	s7,s7,-1
    80005a14:	fb5c94e3          	bne	s9,s5,800059bc <consoleread+0x58>
    80005a18:	000b851b          	sext.w	a0,s7
    80005a1c:	06813083          	ld	ra,104(sp)
    80005a20:	06013403          	ld	s0,96(sp)
    80005a24:	05813483          	ld	s1,88(sp)
    80005a28:	05013903          	ld	s2,80(sp)
    80005a2c:	04813983          	ld	s3,72(sp)
    80005a30:	04013a03          	ld	s4,64(sp)
    80005a34:	03813a83          	ld	s5,56(sp)
    80005a38:	02813b83          	ld	s7,40(sp)
    80005a3c:	02013c03          	ld	s8,32(sp)
    80005a40:	01813c83          	ld	s9,24(sp)
    80005a44:	40ab053b          	subw	a0,s6,a0
    80005a48:	03013b03          	ld	s6,48(sp)
    80005a4c:	07010113          	addi	sp,sp,112
    80005a50:	00008067          	ret
    80005a54:	00001097          	auipc	ra,0x1
    80005a58:	1d8080e7          	jalr	472(ra) # 80006c2c <push_on>
    80005a5c:	0984a703          	lw	a4,152(s1)
    80005a60:	09c4a783          	lw	a5,156(s1)
    80005a64:	0007879b          	sext.w	a5,a5
    80005a68:	fef70ce3          	beq	a4,a5,80005a60 <consoleread+0xfc>
    80005a6c:	00001097          	auipc	ra,0x1
    80005a70:	234080e7          	jalr	564(ra) # 80006ca0 <pop_on>
    80005a74:	0984a783          	lw	a5,152(s1)
    80005a78:	07f7f713          	andi	a4,a5,127
    80005a7c:	00e48733          	add	a4,s1,a4
    80005a80:	01874703          	lbu	a4,24(a4)
    80005a84:	0017869b          	addiw	a3,a5,1
    80005a88:	08d4ac23          	sw	a3,152(s1)
    80005a8c:	00070c9b          	sext.w	s9,a4
    80005a90:	f5371ee3          	bne	a4,s3,800059ec <consoleread+0x88>
    80005a94:	000b851b          	sext.w	a0,s7
    80005a98:	f96bf2e3          	bgeu	s7,s6,80005a1c <consoleread+0xb8>
    80005a9c:	08f4ac23          	sw	a5,152(s1)
    80005aa0:	f7dff06f          	j	80005a1c <consoleread+0xb8>

0000000080005aa4 <consputc>:
    80005aa4:	10000793          	li	a5,256
    80005aa8:	00f50663          	beq	a0,a5,80005ab4 <consputc+0x10>
    80005aac:	00001317          	auipc	t1,0x1
    80005ab0:	9f430067          	jr	-1548(t1) # 800064a0 <uartputc_sync>
    80005ab4:	ff010113          	addi	sp,sp,-16
    80005ab8:	00113423          	sd	ra,8(sp)
    80005abc:	00813023          	sd	s0,0(sp)
    80005ac0:	01010413          	addi	s0,sp,16
    80005ac4:	00800513          	li	a0,8
    80005ac8:	00001097          	auipc	ra,0x1
    80005acc:	9d8080e7          	jalr	-1576(ra) # 800064a0 <uartputc_sync>
    80005ad0:	02000513          	li	a0,32
    80005ad4:	00001097          	auipc	ra,0x1
    80005ad8:	9cc080e7          	jalr	-1588(ra) # 800064a0 <uartputc_sync>
    80005adc:	00013403          	ld	s0,0(sp)
    80005ae0:	00813083          	ld	ra,8(sp)
    80005ae4:	00800513          	li	a0,8
    80005ae8:	01010113          	addi	sp,sp,16
    80005aec:	00001317          	auipc	t1,0x1
    80005af0:	9b430067          	jr	-1612(t1) # 800064a0 <uartputc_sync>

0000000080005af4 <consoleintr>:
    80005af4:	fe010113          	addi	sp,sp,-32
    80005af8:	00813823          	sd	s0,16(sp)
    80005afc:	00913423          	sd	s1,8(sp)
    80005b00:	01213023          	sd	s2,0(sp)
    80005b04:	00113c23          	sd	ra,24(sp)
    80005b08:	02010413          	addi	s0,sp,32
    80005b0c:	00006917          	auipc	s2,0x6
    80005b10:	02c90913          	addi	s2,s2,44 # 8000bb38 <cons>
    80005b14:	00050493          	mv	s1,a0
    80005b18:	00090513          	mv	a0,s2
    80005b1c:	00001097          	auipc	ra,0x1
    80005b20:	e40080e7          	jalr	-448(ra) # 8000695c <acquire>
    80005b24:	02048c63          	beqz	s1,80005b5c <consoleintr+0x68>
    80005b28:	0a092783          	lw	a5,160(s2)
    80005b2c:	09892703          	lw	a4,152(s2)
    80005b30:	07f00693          	li	a3,127
    80005b34:	40e7873b          	subw	a4,a5,a4
    80005b38:	02e6e263          	bltu	a3,a4,80005b5c <consoleintr+0x68>
    80005b3c:	00d00713          	li	a4,13
    80005b40:	04e48063          	beq	s1,a4,80005b80 <consoleintr+0x8c>
    80005b44:	07f7f713          	andi	a4,a5,127
    80005b48:	00e90733          	add	a4,s2,a4
    80005b4c:	0017879b          	addiw	a5,a5,1
    80005b50:	0af92023          	sw	a5,160(s2)
    80005b54:	00970c23          	sb	s1,24(a4)
    80005b58:	08f92e23          	sw	a5,156(s2)
    80005b5c:	01013403          	ld	s0,16(sp)
    80005b60:	01813083          	ld	ra,24(sp)
    80005b64:	00813483          	ld	s1,8(sp)
    80005b68:	00013903          	ld	s2,0(sp)
    80005b6c:	00006517          	auipc	a0,0x6
    80005b70:	fcc50513          	addi	a0,a0,-52 # 8000bb38 <cons>
    80005b74:	02010113          	addi	sp,sp,32
    80005b78:	00001317          	auipc	t1,0x1
    80005b7c:	eb030067          	jr	-336(t1) # 80006a28 <release>
    80005b80:	00a00493          	li	s1,10
    80005b84:	fc1ff06f          	j	80005b44 <consoleintr+0x50>

0000000080005b88 <consoleinit>:
    80005b88:	fe010113          	addi	sp,sp,-32
    80005b8c:	00113c23          	sd	ra,24(sp)
    80005b90:	00813823          	sd	s0,16(sp)
    80005b94:	00913423          	sd	s1,8(sp)
    80005b98:	02010413          	addi	s0,sp,32
    80005b9c:	00006497          	auipc	s1,0x6
    80005ba0:	f9c48493          	addi	s1,s1,-100 # 8000bb38 <cons>
    80005ba4:	00048513          	mv	a0,s1
    80005ba8:	00003597          	auipc	a1,0x3
    80005bac:	97058593          	addi	a1,a1,-1680 # 80008518 <CONSOLE_STATUS+0x508>
    80005bb0:	00001097          	auipc	ra,0x1
    80005bb4:	d88080e7          	jalr	-632(ra) # 80006938 <initlock>
    80005bb8:	00000097          	auipc	ra,0x0
    80005bbc:	7ac080e7          	jalr	1964(ra) # 80006364 <uartinit>
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00000797          	auipc	a5,0x0
    80005bcc:	d9c78793          	addi	a5,a5,-612 # 80005964 <consoleread>
    80005bd0:	0af4bc23          	sd	a5,184(s1)
    80005bd4:	00000797          	auipc	a5,0x0
    80005bd8:	cec78793          	addi	a5,a5,-788 # 800058c0 <consolewrite>
    80005bdc:	0cf4b023          	sd	a5,192(s1)
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	00008067          	ret

0000000080005bec <console_read>:
    80005bec:	ff010113          	addi	sp,sp,-16
    80005bf0:	00813423          	sd	s0,8(sp)
    80005bf4:	01010413          	addi	s0,sp,16
    80005bf8:	00813403          	ld	s0,8(sp)
    80005bfc:	00006317          	auipc	t1,0x6
    80005c00:	ff433303          	ld	t1,-12(t1) # 8000bbf0 <devsw+0x10>
    80005c04:	01010113          	addi	sp,sp,16
    80005c08:	00030067          	jr	t1

0000000080005c0c <console_write>:
    80005c0c:	ff010113          	addi	sp,sp,-16
    80005c10:	00813423          	sd	s0,8(sp)
    80005c14:	01010413          	addi	s0,sp,16
    80005c18:	00813403          	ld	s0,8(sp)
    80005c1c:	00006317          	auipc	t1,0x6
    80005c20:	fdc33303          	ld	t1,-36(t1) # 8000bbf8 <devsw+0x18>
    80005c24:	01010113          	addi	sp,sp,16
    80005c28:	00030067          	jr	t1

0000000080005c2c <panic>:
    80005c2c:	fe010113          	addi	sp,sp,-32
    80005c30:	00113c23          	sd	ra,24(sp)
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00913423          	sd	s1,8(sp)
    80005c3c:	02010413          	addi	s0,sp,32
    80005c40:	00050493          	mv	s1,a0
    80005c44:	00003517          	auipc	a0,0x3
    80005c48:	8dc50513          	addi	a0,a0,-1828 # 80008520 <CONSOLE_STATUS+0x510>
    80005c4c:	00006797          	auipc	a5,0x6
    80005c50:	0407a623          	sw	zero,76(a5) # 8000bc98 <pr+0x18>
    80005c54:	00000097          	auipc	ra,0x0
    80005c58:	034080e7          	jalr	52(ra) # 80005c88 <__printf>
    80005c5c:	00048513          	mv	a0,s1
    80005c60:	00000097          	auipc	ra,0x0
    80005c64:	028080e7          	jalr	40(ra) # 80005c88 <__printf>
    80005c68:	00002517          	auipc	a0,0x2
    80005c6c:	69050513          	addi	a0,a0,1680 # 800082f8 <CONSOLE_STATUS+0x2e8>
    80005c70:	00000097          	auipc	ra,0x0
    80005c74:	018080e7          	jalr	24(ra) # 80005c88 <__printf>
    80005c78:	00100793          	li	a5,1
    80005c7c:	00004717          	auipc	a4,0x4
    80005c80:	52f72623          	sw	a5,1324(a4) # 8000a1a8 <panicked>
    80005c84:	0000006f          	j	80005c84 <panic+0x58>

0000000080005c88 <__printf>:
    80005c88:	f3010113          	addi	sp,sp,-208
    80005c8c:	08813023          	sd	s0,128(sp)
    80005c90:	07313423          	sd	s3,104(sp)
    80005c94:	09010413          	addi	s0,sp,144
    80005c98:	05813023          	sd	s8,64(sp)
    80005c9c:	08113423          	sd	ra,136(sp)
    80005ca0:	06913c23          	sd	s1,120(sp)
    80005ca4:	07213823          	sd	s2,112(sp)
    80005ca8:	07413023          	sd	s4,96(sp)
    80005cac:	05513c23          	sd	s5,88(sp)
    80005cb0:	05613823          	sd	s6,80(sp)
    80005cb4:	05713423          	sd	s7,72(sp)
    80005cb8:	03913c23          	sd	s9,56(sp)
    80005cbc:	03a13823          	sd	s10,48(sp)
    80005cc0:	03b13423          	sd	s11,40(sp)
    80005cc4:	00006317          	auipc	t1,0x6
    80005cc8:	fbc30313          	addi	t1,t1,-68 # 8000bc80 <pr>
    80005ccc:	01832c03          	lw	s8,24(t1)
    80005cd0:	00b43423          	sd	a1,8(s0)
    80005cd4:	00c43823          	sd	a2,16(s0)
    80005cd8:	00d43c23          	sd	a3,24(s0)
    80005cdc:	02e43023          	sd	a4,32(s0)
    80005ce0:	02f43423          	sd	a5,40(s0)
    80005ce4:	03043823          	sd	a6,48(s0)
    80005ce8:	03143c23          	sd	a7,56(s0)
    80005cec:	00050993          	mv	s3,a0
    80005cf0:	4a0c1663          	bnez	s8,8000619c <__printf+0x514>
    80005cf4:	60098c63          	beqz	s3,8000630c <__printf+0x684>
    80005cf8:	0009c503          	lbu	a0,0(s3)
    80005cfc:	00840793          	addi	a5,s0,8
    80005d00:	f6f43c23          	sd	a5,-136(s0)
    80005d04:	00000493          	li	s1,0
    80005d08:	22050063          	beqz	a0,80005f28 <__printf+0x2a0>
    80005d0c:	00002a37          	lui	s4,0x2
    80005d10:	00018ab7          	lui	s5,0x18
    80005d14:	000f4b37          	lui	s6,0xf4
    80005d18:	00989bb7          	lui	s7,0x989
    80005d1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005d20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005d24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005d28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005d2c:	00148c9b          	addiw	s9,s1,1
    80005d30:	02500793          	li	a5,37
    80005d34:	01998933          	add	s2,s3,s9
    80005d38:	38f51263          	bne	a0,a5,800060bc <__printf+0x434>
    80005d3c:	00094783          	lbu	a5,0(s2)
    80005d40:	00078c9b          	sext.w	s9,a5
    80005d44:	1e078263          	beqz	a5,80005f28 <__printf+0x2a0>
    80005d48:	0024849b          	addiw	s1,s1,2
    80005d4c:	07000713          	li	a4,112
    80005d50:	00998933          	add	s2,s3,s1
    80005d54:	38e78a63          	beq	a5,a4,800060e8 <__printf+0x460>
    80005d58:	20f76863          	bltu	a4,a5,80005f68 <__printf+0x2e0>
    80005d5c:	42a78863          	beq	a5,a0,8000618c <__printf+0x504>
    80005d60:	06400713          	li	a4,100
    80005d64:	40e79663          	bne	a5,a4,80006170 <__printf+0x4e8>
    80005d68:	f7843783          	ld	a5,-136(s0)
    80005d6c:	0007a603          	lw	a2,0(a5)
    80005d70:	00878793          	addi	a5,a5,8
    80005d74:	f6f43c23          	sd	a5,-136(s0)
    80005d78:	42064a63          	bltz	a2,800061ac <__printf+0x524>
    80005d7c:	00a00713          	li	a4,10
    80005d80:	02e677bb          	remuw	a5,a2,a4
    80005d84:	00002d97          	auipc	s11,0x2
    80005d88:	7c4d8d93          	addi	s11,s11,1988 # 80008548 <digits>
    80005d8c:	00900593          	li	a1,9
    80005d90:	0006051b          	sext.w	a0,a2
    80005d94:	00000c93          	li	s9,0
    80005d98:	02079793          	slli	a5,a5,0x20
    80005d9c:	0207d793          	srli	a5,a5,0x20
    80005da0:	00fd87b3          	add	a5,s11,a5
    80005da4:	0007c783          	lbu	a5,0(a5)
    80005da8:	02e656bb          	divuw	a3,a2,a4
    80005dac:	f8f40023          	sb	a5,-128(s0)
    80005db0:	14c5d863          	bge	a1,a2,80005f00 <__printf+0x278>
    80005db4:	06300593          	li	a1,99
    80005db8:	00100c93          	li	s9,1
    80005dbc:	02e6f7bb          	remuw	a5,a3,a4
    80005dc0:	02079793          	slli	a5,a5,0x20
    80005dc4:	0207d793          	srli	a5,a5,0x20
    80005dc8:	00fd87b3          	add	a5,s11,a5
    80005dcc:	0007c783          	lbu	a5,0(a5)
    80005dd0:	02e6d73b          	divuw	a4,a3,a4
    80005dd4:	f8f400a3          	sb	a5,-127(s0)
    80005dd8:	12a5f463          	bgeu	a1,a0,80005f00 <__printf+0x278>
    80005ddc:	00a00693          	li	a3,10
    80005de0:	00900593          	li	a1,9
    80005de4:	02d777bb          	remuw	a5,a4,a3
    80005de8:	02079793          	slli	a5,a5,0x20
    80005dec:	0207d793          	srli	a5,a5,0x20
    80005df0:	00fd87b3          	add	a5,s11,a5
    80005df4:	0007c503          	lbu	a0,0(a5)
    80005df8:	02d757bb          	divuw	a5,a4,a3
    80005dfc:	f8a40123          	sb	a0,-126(s0)
    80005e00:	48e5f263          	bgeu	a1,a4,80006284 <__printf+0x5fc>
    80005e04:	06300513          	li	a0,99
    80005e08:	02d7f5bb          	remuw	a1,a5,a3
    80005e0c:	02059593          	slli	a1,a1,0x20
    80005e10:	0205d593          	srli	a1,a1,0x20
    80005e14:	00bd85b3          	add	a1,s11,a1
    80005e18:	0005c583          	lbu	a1,0(a1)
    80005e1c:	02d7d7bb          	divuw	a5,a5,a3
    80005e20:	f8b401a3          	sb	a1,-125(s0)
    80005e24:	48e57263          	bgeu	a0,a4,800062a8 <__printf+0x620>
    80005e28:	3e700513          	li	a0,999
    80005e2c:	02d7f5bb          	remuw	a1,a5,a3
    80005e30:	02059593          	slli	a1,a1,0x20
    80005e34:	0205d593          	srli	a1,a1,0x20
    80005e38:	00bd85b3          	add	a1,s11,a1
    80005e3c:	0005c583          	lbu	a1,0(a1)
    80005e40:	02d7d7bb          	divuw	a5,a5,a3
    80005e44:	f8b40223          	sb	a1,-124(s0)
    80005e48:	46e57663          	bgeu	a0,a4,800062b4 <__printf+0x62c>
    80005e4c:	02d7f5bb          	remuw	a1,a5,a3
    80005e50:	02059593          	slli	a1,a1,0x20
    80005e54:	0205d593          	srli	a1,a1,0x20
    80005e58:	00bd85b3          	add	a1,s11,a1
    80005e5c:	0005c583          	lbu	a1,0(a1)
    80005e60:	02d7d7bb          	divuw	a5,a5,a3
    80005e64:	f8b402a3          	sb	a1,-123(s0)
    80005e68:	46ea7863          	bgeu	s4,a4,800062d8 <__printf+0x650>
    80005e6c:	02d7f5bb          	remuw	a1,a5,a3
    80005e70:	02059593          	slli	a1,a1,0x20
    80005e74:	0205d593          	srli	a1,a1,0x20
    80005e78:	00bd85b3          	add	a1,s11,a1
    80005e7c:	0005c583          	lbu	a1,0(a1)
    80005e80:	02d7d7bb          	divuw	a5,a5,a3
    80005e84:	f8b40323          	sb	a1,-122(s0)
    80005e88:	3eeaf863          	bgeu	s5,a4,80006278 <__printf+0x5f0>
    80005e8c:	02d7f5bb          	remuw	a1,a5,a3
    80005e90:	02059593          	slli	a1,a1,0x20
    80005e94:	0205d593          	srli	a1,a1,0x20
    80005e98:	00bd85b3          	add	a1,s11,a1
    80005e9c:	0005c583          	lbu	a1,0(a1)
    80005ea0:	02d7d7bb          	divuw	a5,a5,a3
    80005ea4:	f8b403a3          	sb	a1,-121(s0)
    80005ea8:	42eb7e63          	bgeu	s6,a4,800062e4 <__printf+0x65c>
    80005eac:	02d7f5bb          	remuw	a1,a5,a3
    80005eb0:	02059593          	slli	a1,a1,0x20
    80005eb4:	0205d593          	srli	a1,a1,0x20
    80005eb8:	00bd85b3          	add	a1,s11,a1
    80005ebc:	0005c583          	lbu	a1,0(a1)
    80005ec0:	02d7d7bb          	divuw	a5,a5,a3
    80005ec4:	f8b40423          	sb	a1,-120(s0)
    80005ec8:	42ebfc63          	bgeu	s7,a4,80006300 <__printf+0x678>
    80005ecc:	02079793          	slli	a5,a5,0x20
    80005ed0:	0207d793          	srli	a5,a5,0x20
    80005ed4:	00fd8db3          	add	s11,s11,a5
    80005ed8:	000dc703          	lbu	a4,0(s11)
    80005edc:	00a00793          	li	a5,10
    80005ee0:	00900c93          	li	s9,9
    80005ee4:	f8e404a3          	sb	a4,-119(s0)
    80005ee8:	00065c63          	bgez	a2,80005f00 <__printf+0x278>
    80005eec:	f9040713          	addi	a4,s0,-112
    80005ef0:	00f70733          	add	a4,a4,a5
    80005ef4:	02d00693          	li	a3,45
    80005ef8:	fed70823          	sb	a3,-16(a4)
    80005efc:	00078c93          	mv	s9,a5
    80005f00:	f8040793          	addi	a5,s0,-128
    80005f04:	01978cb3          	add	s9,a5,s9
    80005f08:	f7f40d13          	addi	s10,s0,-129
    80005f0c:	000cc503          	lbu	a0,0(s9)
    80005f10:	fffc8c93          	addi	s9,s9,-1
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	b90080e7          	jalr	-1136(ra) # 80005aa4 <consputc>
    80005f1c:	ffac98e3          	bne	s9,s10,80005f0c <__printf+0x284>
    80005f20:	00094503          	lbu	a0,0(s2)
    80005f24:	e00514e3          	bnez	a0,80005d2c <__printf+0xa4>
    80005f28:	1a0c1663          	bnez	s8,800060d4 <__printf+0x44c>
    80005f2c:	08813083          	ld	ra,136(sp)
    80005f30:	08013403          	ld	s0,128(sp)
    80005f34:	07813483          	ld	s1,120(sp)
    80005f38:	07013903          	ld	s2,112(sp)
    80005f3c:	06813983          	ld	s3,104(sp)
    80005f40:	06013a03          	ld	s4,96(sp)
    80005f44:	05813a83          	ld	s5,88(sp)
    80005f48:	05013b03          	ld	s6,80(sp)
    80005f4c:	04813b83          	ld	s7,72(sp)
    80005f50:	04013c03          	ld	s8,64(sp)
    80005f54:	03813c83          	ld	s9,56(sp)
    80005f58:	03013d03          	ld	s10,48(sp)
    80005f5c:	02813d83          	ld	s11,40(sp)
    80005f60:	0d010113          	addi	sp,sp,208
    80005f64:	00008067          	ret
    80005f68:	07300713          	li	a4,115
    80005f6c:	1ce78a63          	beq	a5,a4,80006140 <__printf+0x4b8>
    80005f70:	07800713          	li	a4,120
    80005f74:	1ee79e63          	bne	a5,a4,80006170 <__printf+0x4e8>
    80005f78:	f7843783          	ld	a5,-136(s0)
    80005f7c:	0007a703          	lw	a4,0(a5)
    80005f80:	00878793          	addi	a5,a5,8
    80005f84:	f6f43c23          	sd	a5,-136(s0)
    80005f88:	28074263          	bltz	a4,8000620c <__printf+0x584>
    80005f8c:	00002d97          	auipc	s11,0x2
    80005f90:	5bcd8d93          	addi	s11,s11,1468 # 80008548 <digits>
    80005f94:	00f77793          	andi	a5,a4,15
    80005f98:	00fd87b3          	add	a5,s11,a5
    80005f9c:	0007c683          	lbu	a3,0(a5)
    80005fa0:	00f00613          	li	a2,15
    80005fa4:	0007079b          	sext.w	a5,a4
    80005fa8:	f8d40023          	sb	a3,-128(s0)
    80005fac:	0047559b          	srliw	a1,a4,0x4
    80005fb0:	0047569b          	srliw	a3,a4,0x4
    80005fb4:	00000c93          	li	s9,0
    80005fb8:	0ee65063          	bge	a2,a4,80006098 <__printf+0x410>
    80005fbc:	00f6f693          	andi	a3,a3,15
    80005fc0:	00dd86b3          	add	a3,s11,a3
    80005fc4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005fc8:	0087d79b          	srliw	a5,a5,0x8
    80005fcc:	00100c93          	li	s9,1
    80005fd0:	f8d400a3          	sb	a3,-127(s0)
    80005fd4:	0cb67263          	bgeu	a2,a1,80006098 <__printf+0x410>
    80005fd8:	00f7f693          	andi	a3,a5,15
    80005fdc:	00dd86b3          	add	a3,s11,a3
    80005fe0:	0006c583          	lbu	a1,0(a3)
    80005fe4:	00f00613          	li	a2,15
    80005fe8:	0047d69b          	srliw	a3,a5,0x4
    80005fec:	f8b40123          	sb	a1,-126(s0)
    80005ff0:	0047d593          	srli	a1,a5,0x4
    80005ff4:	28f67e63          	bgeu	a2,a5,80006290 <__printf+0x608>
    80005ff8:	00f6f693          	andi	a3,a3,15
    80005ffc:	00dd86b3          	add	a3,s11,a3
    80006000:	0006c503          	lbu	a0,0(a3)
    80006004:	0087d813          	srli	a6,a5,0x8
    80006008:	0087d69b          	srliw	a3,a5,0x8
    8000600c:	f8a401a3          	sb	a0,-125(s0)
    80006010:	28b67663          	bgeu	a2,a1,8000629c <__printf+0x614>
    80006014:	00f6f693          	andi	a3,a3,15
    80006018:	00dd86b3          	add	a3,s11,a3
    8000601c:	0006c583          	lbu	a1,0(a3)
    80006020:	00c7d513          	srli	a0,a5,0xc
    80006024:	00c7d69b          	srliw	a3,a5,0xc
    80006028:	f8b40223          	sb	a1,-124(s0)
    8000602c:	29067a63          	bgeu	a2,a6,800062c0 <__printf+0x638>
    80006030:	00f6f693          	andi	a3,a3,15
    80006034:	00dd86b3          	add	a3,s11,a3
    80006038:	0006c583          	lbu	a1,0(a3)
    8000603c:	0107d813          	srli	a6,a5,0x10
    80006040:	0107d69b          	srliw	a3,a5,0x10
    80006044:	f8b402a3          	sb	a1,-123(s0)
    80006048:	28a67263          	bgeu	a2,a0,800062cc <__printf+0x644>
    8000604c:	00f6f693          	andi	a3,a3,15
    80006050:	00dd86b3          	add	a3,s11,a3
    80006054:	0006c683          	lbu	a3,0(a3)
    80006058:	0147d79b          	srliw	a5,a5,0x14
    8000605c:	f8d40323          	sb	a3,-122(s0)
    80006060:	21067663          	bgeu	a2,a6,8000626c <__printf+0x5e4>
    80006064:	02079793          	slli	a5,a5,0x20
    80006068:	0207d793          	srli	a5,a5,0x20
    8000606c:	00fd8db3          	add	s11,s11,a5
    80006070:	000dc683          	lbu	a3,0(s11)
    80006074:	00800793          	li	a5,8
    80006078:	00700c93          	li	s9,7
    8000607c:	f8d403a3          	sb	a3,-121(s0)
    80006080:	00075c63          	bgez	a4,80006098 <__printf+0x410>
    80006084:	f9040713          	addi	a4,s0,-112
    80006088:	00f70733          	add	a4,a4,a5
    8000608c:	02d00693          	li	a3,45
    80006090:	fed70823          	sb	a3,-16(a4)
    80006094:	00078c93          	mv	s9,a5
    80006098:	f8040793          	addi	a5,s0,-128
    8000609c:	01978cb3          	add	s9,a5,s9
    800060a0:	f7f40d13          	addi	s10,s0,-129
    800060a4:	000cc503          	lbu	a0,0(s9)
    800060a8:	fffc8c93          	addi	s9,s9,-1
    800060ac:	00000097          	auipc	ra,0x0
    800060b0:	9f8080e7          	jalr	-1544(ra) # 80005aa4 <consputc>
    800060b4:	ff9d18e3          	bne	s10,s9,800060a4 <__printf+0x41c>
    800060b8:	0100006f          	j	800060c8 <__printf+0x440>
    800060bc:	00000097          	auipc	ra,0x0
    800060c0:	9e8080e7          	jalr	-1560(ra) # 80005aa4 <consputc>
    800060c4:	000c8493          	mv	s1,s9
    800060c8:	00094503          	lbu	a0,0(s2)
    800060cc:	c60510e3          	bnez	a0,80005d2c <__printf+0xa4>
    800060d0:	e40c0ee3          	beqz	s8,80005f2c <__printf+0x2a4>
    800060d4:	00006517          	auipc	a0,0x6
    800060d8:	bac50513          	addi	a0,a0,-1108 # 8000bc80 <pr>
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	94c080e7          	jalr	-1716(ra) # 80006a28 <release>
    800060e4:	e49ff06f          	j	80005f2c <__printf+0x2a4>
    800060e8:	f7843783          	ld	a5,-136(s0)
    800060ec:	03000513          	li	a0,48
    800060f0:	01000d13          	li	s10,16
    800060f4:	00878713          	addi	a4,a5,8
    800060f8:	0007bc83          	ld	s9,0(a5)
    800060fc:	f6e43c23          	sd	a4,-136(s0)
    80006100:	00000097          	auipc	ra,0x0
    80006104:	9a4080e7          	jalr	-1628(ra) # 80005aa4 <consputc>
    80006108:	07800513          	li	a0,120
    8000610c:	00000097          	auipc	ra,0x0
    80006110:	998080e7          	jalr	-1640(ra) # 80005aa4 <consputc>
    80006114:	00002d97          	auipc	s11,0x2
    80006118:	434d8d93          	addi	s11,s11,1076 # 80008548 <digits>
    8000611c:	03ccd793          	srli	a5,s9,0x3c
    80006120:	00fd87b3          	add	a5,s11,a5
    80006124:	0007c503          	lbu	a0,0(a5)
    80006128:	fffd0d1b          	addiw	s10,s10,-1
    8000612c:	004c9c93          	slli	s9,s9,0x4
    80006130:	00000097          	auipc	ra,0x0
    80006134:	974080e7          	jalr	-1676(ra) # 80005aa4 <consputc>
    80006138:	fe0d12e3          	bnez	s10,8000611c <__printf+0x494>
    8000613c:	f8dff06f          	j	800060c8 <__printf+0x440>
    80006140:	f7843783          	ld	a5,-136(s0)
    80006144:	0007bc83          	ld	s9,0(a5)
    80006148:	00878793          	addi	a5,a5,8
    8000614c:	f6f43c23          	sd	a5,-136(s0)
    80006150:	000c9a63          	bnez	s9,80006164 <__printf+0x4dc>
    80006154:	1080006f          	j	8000625c <__printf+0x5d4>
    80006158:	001c8c93          	addi	s9,s9,1
    8000615c:	00000097          	auipc	ra,0x0
    80006160:	948080e7          	jalr	-1720(ra) # 80005aa4 <consputc>
    80006164:	000cc503          	lbu	a0,0(s9)
    80006168:	fe0518e3          	bnez	a0,80006158 <__printf+0x4d0>
    8000616c:	f5dff06f          	j	800060c8 <__printf+0x440>
    80006170:	02500513          	li	a0,37
    80006174:	00000097          	auipc	ra,0x0
    80006178:	930080e7          	jalr	-1744(ra) # 80005aa4 <consputc>
    8000617c:	000c8513          	mv	a0,s9
    80006180:	00000097          	auipc	ra,0x0
    80006184:	924080e7          	jalr	-1756(ra) # 80005aa4 <consputc>
    80006188:	f41ff06f          	j	800060c8 <__printf+0x440>
    8000618c:	02500513          	li	a0,37
    80006190:	00000097          	auipc	ra,0x0
    80006194:	914080e7          	jalr	-1772(ra) # 80005aa4 <consputc>
    80006198:	f31ff06f          	j	800060c8 <__printf+0x440>
    8000619c:	00030513          	mv	a0,t1
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	7bc080e7          	jalr	1980(ra) # 8000695c <acquire>
    800061a8:	b4dff06f          	j	80005cf4 <__printf+0x6c>
    800061ac:	40c0053b          	negw	a0,a2
    800061b0:	00a00713          	li	a4,10
    800061b4:	02e576bb          	remuw	a3,a0,a4
    800061b8:	00002d97          	auipc	s11,0x2
    800061bc:	390d8d93          	addi	s11,s11,912 # 80008548 <digits>
    800061c0:	ff700593          	li	a1,-9
    800061c4:	02069693          	slli	a3,a3,0x20
    800061c8:	0206d693          	srli	a3,a3,0x20
    800061cc:	00dd86b3          	add	a3,s11,a3
    800061d0:	0006c683          	lbu	a3,0(a3)
    800061d4:	02e557bb          	divuw	a5,a0,a4
    800061d8:	f8d40023          	sb	a3,-128(s0)
    800061dc:	10b65e63          	bge	a2,a1,800062f8 <__printf+0x670>
    800061e0:	06300593          	li	a1,99
    800061e4:	02e7f6bb          	remuw	a3,a5,a4
    800061e8:	02069693          	slli	a3,a3,0x20
    800061ec:	0206d693          	srli	a3,a3,0x20
    800061f0:	00dd86b3          	add	a3,s11,a3
    800061f4:	0006c683          	lbu	a3,0(a3)
    800061f8:	02e7d73b          	divuw	a4,a5,a4
    800061fc:	00200793          	li	a5,2
    80006200:	f8d400a3          	sb	a3,-127(s0)
    80006204:	bca5ece3          	bltu	a1,a0,80005ddc <__printf+0x154>
    80006208:	ce5ff06f          	j	80005eec <__printf+0x264>
    8000620c:	40e007bb          	negw	a5,a4
    80006210:	00002d97          	auipc	s11,0x2
    80006214:	338d8d93          	addi	s11,s11,824 # 80008548 <digits>
    80006218:	00f7f693          	andi	a3,a5,15
    8000621c:	00dd86b3          	add	a3,s11,a3
    80006220:	0006c583          	lbu	a1,0(a3)
    80006224:	ff100613          	li	a2,-15
    80006228:	0047d69b          	srliw	a3,a5,0x4
    8000622c:	f8b40023          	sb	a1,-128(s0)
    80006230:	0047d59b          	srliw	a1,a5,0x4
    80006234:	0ac75e63          	bge	a4,a2,800062f0 <__printf+0x668>
    80006238:	00f6f693          	andi	a3,a3,15
    8000623c:	00dd86b3          	add	a3,s11,a3
    80006240:	0006c603          	lbu	a2,0(a3)
    80006244:	00f00693          	li	a3,15
    80006248:	0087d79b          	srliw	a5,a5,0x8
    8000624c:	f8c400a3          	sb	a2,-127(s0)
    80006250:	d8b6e4e3          	bltu	a3,a1,80005fd8 <__printf+0x350>
    80006254:	00200793          	li	a5,2
    80006258:	e2dff06f          	j	80006084 <__printf+0x3fc>
    8000625c:	00002c97          	auipc	s9,0x2
    80006260:	2ccc8c93          	addi	s9,s9,716 # 80008528 <CONSOLE_STATUS+0x518>
    80006264:	02800513          	li	a0,40
    80006268:	ef1ff06f          	j	80006158 <__printf+0x4d0>
    8000626c:	00700793          	li	a5,7
    80006270:	00600c93          	li	s9,6
    80006274:	e0dff06f          	j	80006080 <__printf+0x3f8>
    80006278:	00700793          	li	a5,7
    8000627c:	00600c93          	li	s9,6
    80006280:	c69ff06f          	j	80005ee8 <__printf+0x260>
    80006284:	00300793          	li	a5,3
    80006288:	00200c93          	li	s9,2
    8000628c:	c5dff06f          	j	80005ee8 <__printf+0x260>
    80006290:	00300793          	li	a5,3
    80006294:	00200c93          	li	s9,2
    80006298:	de9ff06f          	j	80006080 <__printf+0x3f8>
    8000629c:	00400793          	li	a5,4
    800062a0:	00300c93          	li	s9,3
    800062a4:	dddff06f          	j	80006080 <__printf+0x3f8>
    800062a8:	00400793          	li	a5,4
    800062ac:	00300c93          	li	s9,3
    800062b0:	c39ff06f          	j	80005ee8 <__printf+0x260>
    800062b4:	00500793          	li	a5,5
    800062b8:	00400c93          	li	s9,4
    800062bc:	c2dff06f          	j	80005ee8 <__printf+0x260>
    800062c0:	00500793          	li	a5,5
    800062c4:	00400c93          	li	s9,4
    800062c8:	db9ff06f          	j	80006080 <__printf+0x3f8>
    800062cc:	00600793          	li	a5,6
    800062d0:	00500c93          	li	s9,5
    800062d4:	dadff06f          	j	80006080 <__printf+0x3f8>
    800062d8:	00600793          	li	a5,6
    800062dc:	00500c93          	li	s9,5
    800062e0:	c09ff06f          	j	80005ee8 <__printf+0x260>
    800062e4:	00800793          	li	a5,8
    800062e8:	00700c93          	li	s9,7
    800062ec:	bfdff06f          	j	80005ee8 <__printf+0x260>
    800062f0:	00100793          	li	a5,1
    800062f4:	d91ff06f          	j	80006084 <__printf+0x3fc>
    800062f8:	00100793          	li	a5,1
    800062fc:	bf1ff06f          	j	80005eec <__printf+0x264>
    80006300:	00900793          	li	a5,9
    80006304:	00800c93          	li	s9,8
    80006308:	be1ff06f          	j	80005ee8 <__printf+0x260>
    8000630c:	00002517          	auipc	a0,0x2
    80006310:	22450513          	addi	a0,a0,548 # 80008530 <CONSOLE_STATUS+0x520>
    80006314:	00000097          	auipc	ra,0x0
    80006318:	918080e7          	jalr	-1768(ra) # 80005c2c <panic>

000000008000631c <printfinit>:
    8000631c:	fe010113          	addi	sp,sp,-32
    80006320:	00813823          	sd	s0,16(sp)
    80006324:	00913423          	sd	s1,8(sp)
    80006328:	00113c23          	sd	ra,24(sp)
    8000632c:	02010413          	addi	s0,sp,32
    80006330:	00006497          	auipc	s1,0x6
    80006334:	95048493          	addi	s1,s1,-1712 # 8000bc80 <pr>
    80006338:	00048513          	mv	a0,s1
    8000633c:	00002597          	auipc	a1,0x2
    80006340:	20458593          	addi	a1,a1,516 # 80008540 <CONSOLE_STATUS+0x530>
    80006344:	00000097          	auipc	ra,0x0
    80006348:	5f4080e7          	jalr	1524(ra) # 80006938 <initlock>
    8000634c:	01813083          	ld	ra,24(sp)
    80006350:	01013403          	ld	s0,16(sp)
    80006354:	0004ac23          	sw	zero,24(s1)
    80006358:	00813483          	ld	s1,8(sp)
    8000635c:	02010113          	addi	sp,sp,32
    80006360:	00008067          	ret

0000000080006364 <uartinit>:
    80006364:	ff010113          	addi	sp,sp,-16
    80006368:	00813423          	sd	s0,8(sp)
    8000636c:	01010413          	addi	s0,sp,16
    80006370:	100007b7          	lui	a5,0x10000
    80006374:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006378:	f8000713          	li	a4,-128
    8000637c:	00e781a3          	sb	a4,3(a5)
    80006380:	00300713          	li	a4,3
    80006384:	00e78023          	sb	a4,0(a5)
    80006388:	000780a3          	sb	zero,1(a5)
    8000638c:	00e781a3          	sb	a4,3(a5)
    80006390:	00700693          	li	a3,7
    80006394:	00d78123          	sb	a3,2(a5)
    80006398:	00e780a3          	sb	a4,1(a5)
    8000639c:	00813403          	ld	s0,8(sp)
    800063a0:	01010113          	addi	sp,sp,16
    800063a4:	00008067          	ret

00000000800063a8 <uartputc>:
    800063a8:	00004797          	auipc	a5,0x4
    800063ac:	e007a783          	lw	a5,-512(a5) # 8000a1a8 <panicked>
    800063b0:	00078463          	beqz	a5,800063b8 <uartputc+0x10>
    800063b4:	0000006f          	j	800063b4 <uartputc+0xc>
    800063b8:	fd010113          	addi	sp,sp,-48
    800063bc:	02813023          	sd	s0,32(sp)
    800063c0:	00913c23          	sd	s1,24(sp)
    800063c4:	01213823          	sd	s2,16(sp)
    800063c8:	01313423          	sd	s3,8(sp)
    800063cc:	02113423          	sd	ra,40(sp)
    800063d0:	03010413          	addi	s0,sp,48
    800063d4:	00004917          	auipc	s2,0x4
    800063d8:	ddc90913          	addi	s2,s2,-548 # 8000a1b0 <uart_tx_r>
    800063dc:	00093783          	ld	a5,0(s2)
    800063e0:	00004497          	auipc	s1,0x4
    800063e4:	dd848493          	addi	s1,s1,-552 # 8000a1b8 <uart_tx_w>
    800063e8:	0004b703          	ld	a4,0(s1)
    800063ec:	02078693          	addi	a3,a5,32
    800063f0:	00050993          	mv	s3,a0
    800063f4:	02e69c63          	bne	a3,a4,8000642c <uartputc+0x84>
    800063f8:	00001097          	auipc	ra,0x1
    800063fc:	834080e7          	jalr	-1996(ra) # 80006c2c <push_on>
    80006400:	00093783          	ld	a5,0(s2)
    80006404:	0004b703          	ld	a4,0(s1)
    80006408:	02078793          	addi	a5,a5,32
    8000640c:	00e79463          	bne	a5,a4,80006414 <uartputc+0x6c>
    80006410:	0000006f          	j	80006410 <uartputc+0x68>
    80006414:	00001097          	auipc	ra,0x1
    80006418:	88c080e7          	jalr	-1908(ra) # 80006ca0 <pop_on>
    8000641c:	00093783          	ld	a5,0(s2)
    80006420:	0004b703          	ld	a4,0(s1)
    80006424:	02078693          	addi	a3,a5,32
    80006428:	fce688e3          	beq	a3,a4,800063f8 <uartputc+0x50>
    8000642c:	01f77693          	andi	a3,a4,31
    80006430:	00006597          	auipc	a1,0x6
    80006434:	87058593          	addi	a1,a1,-1936 # 8000bca0 <uart_tx_buf>
    80006438:	00d586b3          	add	a3,a1,a3
    8000643c:	00170713          	addi	a4,a4,1
    80006440:	01368023          	sb	s3,0(a3)
    80006444:	00e4b023          	sd	a4,0(s1)
    80006448:	10000637          	lui	a2,0x10000
    8000644c:	02f71063          	bne	a4,a5,8000646c <uartputc+0xc4>
    80006450:	0340006f          	j	80006484 <uartputc+0xdc>
    80006454:	00074703          	lbu	a4,0(a4)
    80006458:	00f93023          	sd	a5,0(s2)
    8000645c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006460:	00093783          	ld	a5,0(s2)
    80006464:	0004b703          	ld	a4,0(s1)
    80006468:	00f70e63          	beq	a4,a5,80006484 <uartputc+0xdc>
    8000646c:	00564683          	lbu	a3,5(a2)
    80006470:	01f7f713          	andi	a4,a5,31
    80006474:	00e58733          	add	a4,a1,a4
    80006478:	0206f693          	andi	a3,a3,32
    8000647c:	00178793          	addi	a5,a5,1
    80006480:	fc069ae3          	bnez	a3,80006454 <uartputc+0xac>
    80006484:	02813083          	ld	ra,40(sp)
    80006488:	02013403          	ld	s0,32(sp)
    8000648c:	01813483          	ld	s1,24(sp)
    80006490:	01013903          	ld	s2,16(sp)
    80006494:	00813983          	ld	s3,8(sp)
    80006498:	03010113          	addi	sp,sp,48
    8000649c:	00008067          	ret

00000000800064a0 <uartputc_sync>:
    800064a0:	ff010113          	addi	sp,sp,-16
    800064a4:	00813423          	sd	s0,8(sp)
    800064a8:	01010413          	addi	s0,sp,16
    800064ac:	00004717          	auipc	a4,0x4
    800064b0:	cfc72703          	lw	a4,-772(a4) # 8000a1a8 <panicked>
    800064b4:	02071663          	bnez	a4,800064e0 <uartputc_sync+0x40>
    800064b8:	00050793          	mv	a5,a0
    800064bc:	100006b7          	lui	a3,0x10000
    800064c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800064c4:	02077713          	andi	a4,a4,32
    800064c8:	fe070ce3          	beqz	a4,800064c0 <uartputc_sync+0x20>
    800064cc:	0ff7f793          	andi	a5,a5,255
    800064d0:	00f68023          	sb	a5,0(a3)
    800064d4:	00813403          	ld	s0,8(sp)
    800064d8:	01010113          	addi	sp,sp,16
    800064dc:	00008067          	ret
    800064e0:	0000006f          	j	800064e0 <uartputc_sync+0x40>

00000000800064e4 <uartstart>:
    800064e4:	ff010113          	addi	sp,sp,-16
    800064e8:	00813423          	sd	s0,8(sp)
    800064ec:	01010413          	addi	s0,sp,16
    800064f0:	00004617          	auipc	a2,0x4
    800064f4:	cc060613          	addi	a2,a2,-832 # 8000a1b0 <uart_tx_r>
    800064f8:	00004517          	auipc	a0,0x4
    800064fc:	cc050513          	addi	a0,a0,-832 # 8000a1b8 <uart_tx_w>
    80006500:	00063783          	ld	a5,0(a2)
    80006504:	00053703          	ld	a4,0(a0)
    80006508:	04f70263          	beq	a4,a5,8000654c <uartstart+0x68>
    8000650c:	100005b7          	lui	a1,0x10000
    80006510:	00005817          	auipc	a6,0x5
    80006514:	79080813          	addi	a6,a6,1936 # 8000bca0 <uart_tx_buf>
    80006518:	01c0006f          	j	80006534 <uartstart+0x50>
    8000651c:	0006c703          	lbu	a4,0(a3)
    80006520:	00f63023          	sd	a5,0(a2)
    80006524:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006528:	00063783          	ld	a5,0(a2)
    8000652c:	00053703          	ld	a4,0(a0)
    80006530:	00f70e63          	beq	a4,a5,8000654c <uartstart+0x68>
    80006534:	01f7f713          	andi	a4,a5,31
    80006538:	00e806b3          	add	a3,a6,a4
    8000653c:	0055c703          	lbu	a4,5(a1)
    80006540:	00178793          	addi	a5,a5,1
    80006544:	02077713          	andi	a4,a4,32
    80006548:	fc071ae3          	bnez	a4,8000651c <uartstart+0x38>
    8000654c:	00813403          	ld	s0,8(sp)
    80006550:	01010113          	addi	sp,sp,16
    80006554:	00008067          	ret

0000000080006558 <uartgetc>:
    80006558:	ff010113          	addi	sp,sp,-16
    8000655c:	00813423          	sd	s0,8(sp)
    80006560:	01010413          	addi	s0,sp,16
    80006564:	10000737          	lui	a4,0x10000
    80006568:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000656c:	0017f793          	andi	a5,a5,1
    80006570:	00078c63          	beqz	a5,80006588 <uartgetc+0x30>
    80006574:	00074503          	lbu	a0,0(a4)
    80006578:	0ff57513          	andi	a0,a0,255
    8000657c:	00813403          	ld	s0,8(sp)
    80006580:	01010113          	addi	sp,sp,16
    80006584:	00008067          	ret
    80006588:	fff00513          	li	a0,-1
    8000658c:	ff1ff06f          	j	8000657c <uartgetc+0x24>

0000000080006590 <uartintr>:
    80006590:	100007b7          	lui	a5,0x10000
    80006594:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006598:	0017f793          	andi	a5,a5,1
    8000659c:	0a078463          	beqz	a5,80006644 <uartintr+0xb4>
    800065a0:	fe010113          	addi	sp,sp,-32
    800065a4:	00813823          	sd	s0,16(sp)
    800065a8:	00913423          	sd	s1,8(sp)
    800065ac:	00113c23          	sd	ra,24(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	100004b7          	lui	s1,0x10000
    800065b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800065bc:	0ff57513          	andi	a0,a0,255
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	534080e7          	jalr	1332(ra) # 80005af4 <consoleintr>
    800065c8:	0054c783          	lbu	a5,5(s1)
    800065cc:	0017f793          	andi	a5,a5,1
    800065d0:	fe0794e3          	bnez	a5,800065b8 <uartintr+0x28>
    800065d4:	00004617          	auipc	a2,0x4
    800065d8:	bdc60613          	addi	a2,a2,-1060 # 8000a1b0 <uart_tx_r>
    800065dc:	00004517          	auipc	a0,0x4
    800065e0:	bdc50513          	addi	a0,a0,-1060 # 8000a1b8 <uart_tx_w>
    800065e4:	00063783          	ld	a5,0(a2)
    800065e8:	00053703          	ld	a4,0(a0)
    800065ec:	04f70263          	beq	a4,a5,80006630 <uartintr+0xa0>
    800065f0:	100005b7          	lui	a1,0x10000
    800065f4:	00005817          	auipc	a6,0x5
    800065f8:	6ac80813          	addi	a6,a6,1708 # 8000bca0 <uart_tx_buf>
    800065fc:	01c0006f          	j	80006618 <uartintr+0x88>
    80006600:	0006c703          	lbu	a4,0(a3)
    80006604:	00f63023          	sd	a5,0(a2)
    80006608:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000660c:	00063783          	ld	a5,0(a2)
    80006610:	00053703          	ld	a4,0(a0)
    80006614:	00f70e63          	beq	a4,a5,80006630 <uartintr+0xa0>
    80006618:	01f7f713          	andi	a4,a5,31
    8000661c:	00e806b3          	add	a3,a6,a4
    80006620:	0055c703          	lbu	a4,5(a1)
    80006624:	00178793          	addi	a5,a5,1
    80006628:	02077713          	andi	a4,a4,32
    8000662c:	fc071ae3          	bnez	a4,80006600 <uartintr+0x70>
    80006630:	01813083          	ld	ra,24(sp)
    80006634:	01013403          	ld	s0,16(sp)
    80006638:	00813483          	ld	s1,8(sp)
    8000663c:	02010113          	addi	sp,sp,32
    80006640:	00008067          	ret
    80006644:	00004617          	auipc	a2,0x4
    80006648:	b6c60613          	addi	a2,a2,-1172 # 8000a1b0 <uart_tx_r>
    8000664c:	00004517          	auipc	a0,0x4
    80006650:	b6c50513          	addi	a0,a0,-1172 # 8000a1b8 <uart_tx_w>
    80006654:	00063783          	ld	a5,0(a2)
    80006658:	00053703          	ld	a4,0(a0)
    8000665c:	04f70263          	beq	a4,a5,800066a0 <uartintr+0x110>
    80006660:	100005b7          	lui	a1,0x10000
    80006664:	00005817          	auipc	a6,0x5
    80006668:	63c80813          	addi	a6,a6,1596 # 8000bca0 <uart_tx_buf>
    8000666c:	01c0006f          	j	80006688 <uartintr+0xf8>
    80006670:	0006c703          	lbu	a4,0(a3)
    80006674:	00f63023          	sd	a5,0(a2)
    80006678:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000667c:	00063783          	ld	a5,0(a2)
    80006680:	00053703          	ld	a4,0(a0)
    80006684:	02f70063          	beq	a4,a5,800066a4 <uartintr+0x114>
    80006688:	01f7f713          	andi	a4,a5,31
    8000668c:	00e806b3          	add	a3,a6,a4
    80006690:	0055c703          	lbu	a4,5(a1)
    80006694:	00178793          	addi	a5,a5,1
    80006698:	02077713          	andi	a4,a4,32
    8000669c:	fc071ae3          	bnez	a4,80006670 <uartintr+0xe0>
    800066a0:	00008067          	ret
    800066a4:	00008067          	ret

00000000800066a8 <kinit>:
    800066a8:	fc010113          	addi	sp,sp,-64
    800066ac:	02913423          	sd	s1,40(sp)
    800066b0:	fffff7b7          	lui	a5,0xfffff
    800066b4:	00006497          	auipc	s1,0x6
    800066b8:	60b48493          	addi	s1,s1,1547 # 8000ccbf <end+0xfff>
    800066bc:	02813823          	sd	s0,48(sp)
    800066c0:	01313c23          	sd	s3,24(sp)
    800066c4:	00f4f4b3          	and	s1,s1,a5
    800066c8:	02113c23          	sd	ra,56(sp)
    800066cc:	03213023          	sd	s2,32(sp)
    800066d0:	01413823          	sd	s4,16(sp)
    800066d4:	01513423          	sd	s5,8(sp)
    800066d8:	04010413          	addi	s0,sp,64
    800066dc:	000017b7          	lui	a5,0x1
    800066e0:	01100993          	li	s3,17
    800066e4:	00f487b3          	add	a5,s1,a5
    800066e8:	01b99993          	slli	s3,s3,0x1b
    800066ec:	06f9e063          	bltu	s3,a5,8000674c <kinit+0xa4>
    800066f0:	00005a97          	auipc	s5,0x5
    800066f4:	5d0a8a93          	addi	s5,s5,1488 # 8000bcc0 <end>
    800066f8:	0754ec63          	bltu	s1,s5,80006770 <kinit+0xc8>
    800066fc:	0734fa63          	bgeu	s1,s3,80006770 <kinit+0xc8>
    80006700:	00088a37          	lui	s4,0x88
    80006704:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006708:	00004917          	auipc	s2,0x4
    8000670c:	ab890913          	addi	s2,s2,-1352 # 8000a1c0 <kmem>
    80006710:	00ca1a13          	slli	s4,s4,0xc
    80006714:	0140006f          	j	80006728 <kinit+0x80>
    80006718:	000017b7          	lui	a5,0x1
    8000671c:	00f484b3          	add	s1,s1,a5
    80006720:	0554e863          	bltu	s1,s5,80006770 <kinit+0xc8>
    80006724:	0534f663          	bgeu	s1,s3,80006770 <kinit+0xc8>
    80006728:	00001637          	lui	a2,0x1
    8000672c:	00100593          	li	a1,1
    80006730:	00048513          	mv	a0,s1
    80006734:	00000097          	auipc	ra,0x0
    80006738:	5e4080e7          	jalr	1508(ra) # 80006d18 <__memset>
    8000673c:	00093783          	ld	a5,0(s2)
    80006740:	00f4b023          	sd	a5,0(s1)
    80006744:	00993023          	sd	s1,0(s2)
    80006748:	fd4498e3          	bne	s1,s4,80006718 <kinit+0x70>
    8000674c:	03813083          	ld	ra,56(sp)
    80006750:	03013403          	ld	s0,48(sp)
    80006754:	02813483          	ld	s1,40(sp)
    80006758:	02013903          	ld	s2,32(sp)
    8000675c:	01813983          	ld	s3,24(sp)
    80006760:	01013a03          	ld	s4,16(sp)
    80006764:	00813a83          	ld	s5,8(sp)
    80006768:	04010113          	addi	sp,sp,64
    8000676c:	00008067          	ret
    80006770:	00002517          	auipc	a0,0x2
    80006774:	df050513          	addi	a0,a0,-528 # 80008560 <digits+0x18>
    80006778:	fffff097          	auipc	ra,0xfffff
    8000677c:	4b4080e7          	jalr	1204(ra) # 80005c2c <panic>

0000000080006780 <freerange>:
    80006780:	fc010113          	addi	sp,sp,-64
    80006784:	000017b7          	lui	a5,0x1
    80006788:	02913423          	sd	s1,40(sp)
    8000678c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006790:	009504b3          	add	s1,a0,s1
    80006794:	fffff537          	lui	a0,0xfffff
    80006798:	02813823          	sd	s0,48(sp)
    8000679c:	02113c23          	sd	ra,56(sp)
    800067a0:	03213023          	sd	s2,32(sp)
    800067a4:	01313c23          	sd	s3,24(sp)
    800067a8:	01413823          	sd	s4,16(sp)
    800067ac:	01513423          	sd	s5,8(sp)
    800067b0:	01613023          	sd	s6,0(sp)
    800067b4:	04010413          	addi	s0,sp,64
    800067b8:	00a4f4b3          	and	s1,s1,a0
    800067bc:	00f487b3          	add	a5,s1,a5
    800067c0:	06f5e463          	bltu	a1,a5,80006828 <freerange+0xa8>
    800067c4:	00005a97          	auipc	s5,0x5
    800067c8:	4fca8a93          	addi	s5,s5,1276 # 8000bcc0 <end>
    800067cc:	0954e263          	bltu	s1,s5,80006850 <freerange+0xd0>
    800067d0:	01100993          	li	s3,17
    800067d4:	01b99993          	slli	s3,s3,0x1b
    800067d8:	0734fc63          	bgeu	s1,s3,80006850 <freerange+0xd0>
    800067dc:	00058a13          	mv	s4,a1
    800067e0:	00004917          	auipc	s2,0x4
    800067e4:	9e090913          	addi	s2,s2,-1568 # 8000a1c0 <kmem>
    800067e8:	00002b37          	lui	s6,0x2
    800067ec:	0140006f          	j	80006800 <freerange+0x80>
    800067f0:	000017b7          	lui	a5,0x1
    800067f4:	00f484b3          	add	s1,s1,a5
    800067f8:	0554ec63          	bltu	s1,s5,80006850 <freerange+0xd0>
    800067fc:	0534fa63          	bgeu	s1,s3,80006850 <freerange+0xd0>
    80006800:	00001637          	lui	a2,0x1
    80006804:	00100593          	li	a1,1
    80006808:	00048513          	mv	a0,s1
    8000680c:	00000097          	auipc	ra,0x0
    80006810:	50c080e7          	jalr	1292(ra) # 80006d18 <__memset>
    80006814:	00093703          	ld	a4,0(s2)
    80006818:	016487b3          	add	a5,s1,s6
    8000681c:	00e4b023          	sd	a4,0(s1)
    80006820:	00993023          	sd	s1,0(s2)
    80006824:	fcfa76e3          	bgeu	s4,a5,800067f0 <freerange+0x70>
    80006828:	03813083          	ld	ra,56(sp)
    8000682c:	03013403          	ld	s0,48(sp)
    80006830:	02813483          	ld	s1,40(sp)
    80006834:	02013903          	ld	s2,32(sp)
    80006838:	01813983          	ld	s3,24(sp)
    8000683c:	01013a03          	ld	s4,16(sp)
    80006840:	00813a83          	ld	s5,8(sp)
    80006844:	00013b03          	ld	s6,0(sp)
    80006848:	04010113          	addi	sp,sp,64
    8000684c:	00008067          	ret
    80006850:	00002517          	auipc	a0,0x2
    80006854:	d1050513          	addi	a0,a0,-752 # 80008560 <digits+0x18>
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	3d4080e7          	jalr	980(ra) # 80005c2c <panic>

0000000080006860 <kfree>:
    80006860:	fe010113          	addi	sp,sp,-32
    80006864:	00813823          	sd	s0,16(sp)
    80006868:	00113c23          	sd	ra,24(sp)
    8000686c:	00913423          	sd	s1,8(sp)
    80006870:	02010413          	addi	s0,sp,32
    80006874:	03451793          	slli	a5,a0,0x34
    80006878:	04079c63          	bnez	a5,800068d0 <kfree+0x70>
    8000687c:	00005797          	auipc	a5,0x5
    80006880:	44478793          	addi	a5,a5,1092 # 8000bcc0 <end>
    80006884:	00050493          	mv	s1,a0
    80006888:	04f56463          	bltu	a0,a5,800068d0 <kfree+0x70>
    8000688c:	01100793          	li	a5,17
    80006890:	01b79793          	slli	a5,a5,0x1b
    80006894:	02f57e63          	bgeu	a0,a5,800068d0 <kfree+0x70>
    80006898:	00001637          	lui	a2,0x1
    8000689c:	00100593          	li	a1,1
    800068a0:	00000097          	auipc	ra,0x0
    800068a4:	478080e7          	jalr	1144(ra) # 80006d18 <__memset>
    800068a8:	00004797          	auipc	a5,0x4
    800068ac:	91878793          	addi	a5,a5,-1768 # 8000a1c0 <kmem>
    800068b0:	0007b703          	ld	a4,0(a5)
    800068b4:	01813083          	ld	ra,24(sp)
    800068b8:	01013403          	ld	s0,16(sp)
    800068bc:	00e4b023          	sd	a4,0(s1)
    800068c0:	0097b023          	sd	s1,0(a5)
    800068c4:	00813483          	ld	s1,8(sp)
    800068c8:	02010113          	addi	sp,sp,32
    800068cc:	00008067          	ret
    800068d0:	00002517          	auipc	a0,0x2
    800068d4:	c9050513          	addi	a0,a0,-880 # 80008560 <digits+0x18>
    800068d8:	fffff097          	auipc	ra,0xfffff
    800068dc:	354080e7          	jalr	852(ra) # 80005c2c <panic>

00000000800068e0 <kalloc>:
    800068e0:	fe010113          	addi	sp,sp,-32
    800068e4:	00813823          	sd	s0,16(sp)
    800068e8:	00913423          	sd	s1,8(sp)
    800068ec:	00113c23          	sd	ra,24(sp)
    800068f0:	02010413          	addi	s0,sp,32
    800068f4:	00004797          	auipc	a5,0x4
    800068f8:	8cc78793          	addi	a5,a5,-1844 # 8000a1c0 <kmem>
    800068fc:	0007b483          	ld	s1,0(a5)
    80006900:	02048063          	beqz	s1,80006920 <kalloc+0x40>
    80006904:	0004b703          	ld	a4,0(s1)
    80006908:	00001637          	lui	a2,0x1
    8000690c:	00500593          	li	a1,5
    80006910:	00048513          	mv	a0,s1
    80006914:	00e7b023          	sd	a4,0(a5)
    80006918:	00000097          	auipc	ra,0x0
    8000691c:	400080e7          	jalr	1024(ra) # 80006d18 <__memset>
    80006920:	01813083          	ld	ra,24(sp)
    80006924:	01013403          	ld	s0,16(sp)
    80006928:	00048513          	mv	a0,s1
    8000692c:	00813483          	ld	s1,8(sp)
    80006930:	02010113          	addi	sp,sp,32
    80006934:	00008067          	ret

0000000080006938 <initlock>:
    80006938:	ff010113          	addi	sp,sp,-16
    8000693c:	00813423          	sd	s0,8(sp)
    80006940:	01010413          	addi	s0,sp,16
    80006944:	00813403          	ld	s0,8(sp)
    80006948:	00b53423          	sd	a1,8(a0)
    8000694c:	00052023          	sw	zero,0(a0)
    80006950:	00053823          	sd	zero,16(a0)
    80006954:	01010113          	addi	sp,sp,16
    80006958:	00008067          	ret

000000008000695c <acquire>:
    8000695c:	fe010113          	addi	sp,sp,-32
    80006960:	00813823          	sd	s0,16(sp)
    80006964:	00913423          	sd	s1,8(sp)
    80006968:	00113c23          	sd	ra,24(sp)
    8000696c:	01213023          	sd	s2,0(sp)
    80006970:	02010413          	addi	s0,sp,32
    80006974:	00050493          	mv	s1,a0
    80006978:	10002973          	csrr	s2,sstatus
    8000697c:	100027f3          	csrr	a5,sstatus
    80006980:	ffd7f793          	andi	a5,a5,-3
    80006984:	10079073          	csrw	sstatus,a5
    80006988:	fffff097          	auipc	ra,0xfffff
    8000698c:	8e4080e7          	jalr	-1820(ra) # 8000526c <mycpu>
    80006990:	07852783          	lw	a5,120(a0)
    80006994:	06078e63          	beqz	a5,80006a10 <acquire+0xb4>
    80006998:	fffff097          	auipc	ra,0xfffff
    8000699c:	8d4080e7          	jalr	-1836(ra) # 8000526c <mycpu>
    800069a0:	07852783          	lw	a5,120(a0)
    800069a4:	0004a703          	lw	a4,0(s1)
    800069a8:	0017879b          	addiw	a5,a5,1
    800069ac:	06f52c23          	sw	a5,120(a0)
    800069b0:	04071063          	bnez	a4,800069f0 <acquire+0x94>
    800069b4:	00100713          	li	a4,1
    800069b8:	00070793          	mv	a5,a4
    800069bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800069c0:	0007879b          	sext.w	a5,a5
    800069c4:	fe079ae3          	bnez	a5,800069b8 <acquire+0x5c>
    800069c8:	0ff0000f          	fence
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	8a0080e7          	jalr	-1888(ra) # 8000526c <mycpu>
    800069d4:	01813083          	ld	ra,24(sp)
    800069d8:	01013403          	ld	s0,16(sp)
    800069dc:	00a4b823          	sd	a0,16(s1)
    800069e0:	00013903          	ld	s2,0(sp)
    800069e4:	00813483          	ld	s1,8(sp)
    800069e8:	02010113          	addi	sp,sp,32
    800069ec:	00008067          	ret
    800069f0:	0104b903          	ld	s2,16(s1)
    800069f4:	fffff097          	auipc	ra,0xfffff
    800069f8:	878080e7          	jalr	-1928(ra) # 8000526c <mycpu>
    800069fc:	faa91ce3          	bne	s2,a0,800069b4 <acquire+0x58>
    80006a00:	00002517          	auipc	a0,0x2
    80006a04:	b6850513          	addi	a0,a0,-1176 # 80008568 <digits+0x20>
    80006a08:	fffff097          	auipc	ra,0xfffff
    80006a0c:	224080e7          	jalr	548(ra) # 80005c2c <panic>
    80006a10:	00195913          	srli	s2,s2,0x1
    80006a14:	fffff097          	auipc	ra,0xfffff
    80006a18:	858080e7          	jalr	-1960(ra) # 8000526c <mycpu>
    80006a1c:	00197913          	andi	s2,s2,1
    80006a20:	07252e23          	sw	s2,124(a0)
    80006a24:	f75ff06f          	j	80006998 <acquire+0x3c>

0000000080006a28 <release>:
    80006a28:	fe010113          	addi	sp,sp,-32
    80006a2c:	00813823          	sd	s0,16(sp)
    80006a30:	00113c23          	sd	ra,24(sp)
    80006a34:	00913423          	sd	s1,8(sp)
    80006a38:	01213023          	sd	s2,0(sp)
    80006a3c:	02010413          	addi	s0,sp,32
    80006a40:	00052783          	lw	a5,0(a0)
    80006a44:	00079a63          	bnez	a5,80006a58 <release+0x30>
    80006a48:	00002517          	auipc	a0,0x2
    80006a4c:	b2850513          	addi	a0,a0,-1240 # 80008570 <digits+0x28>
    80006a50:	fffff097          	auipc	ra,0xfffff
    80006a54:	1dc080e7          	jalr	476(ra) # 80005c2c <panic>
    80006a58:	01053903          	ld	s2,16(a0)
    80006a5c:	00050493          	mv	s1,a0
    80006a60:	fffff097          	auipc	ra,0xfffff
    80006a64:	80c080e7          	jalr	-2036(ra) # 8000526c <mycpu>
    80006a68:	fea910e3          	bne	s2,a0,80006a48 <release+0x20>
    80006a6c:	0004b823          	sd	zero,16(s1)
    80006a70:	0ff0000f          	fence
    80006a74:	0f50000f          	fence	iorw,ow
    80006a78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006a7c:	ffffe097          	auipc	ra,0xffffe
    80006a80:	7f0080e7          	jalr	2032(ra) # 8000526c <mycpu>
    80006a84:	100027f3          	csrr	a5,sstatus
    80006a88:	0027f793          	andi	a5,a5,2
    80006a8c:	04079a63          	bnez	a5,80006ae0 <release+0xb8>
    80006a90:	07852783          	lw	a5,120(a0)
    80006a94:	02f05e63          	blez	a5,80006ad0 <release+0xa8>
    80006a98:	fff7871b          	addiw	a4,a5,-1
    80006a9c:	06e52c23          	sw	a4,120(a0)
    80006aa0:	00071c63          	bnez	a4,80006ab8 <release+0x90>
    80006aa4:	07c52783          	lw	a5,124(a0)
    80006aa8:	00078863          	beqz	a5,80006ab8 <release+0x90>
    80006aac:	100027f3          	csrr	a5,sstatus
    80006ab0:	0027e793          	ori	a5,a5,2
    80006ab4:	10079073          	csrw	sstatus,a5
    80006ab8:	01813083          	ld	ra,24(sp)
    80006abc:	01013403          	ld	s0,16(sp)
    80006ac0:	00813483          	ld	s1,8(sp)
    80006ac4:	00013903          	ld	s2,0(sp)
    80006ac8:	02010113          	addi	sp,sp,32
    80006acc:	00008067          	ret
    80006ad0:	00002517          	auipc	a0,0x2
    80006ad4:	ac050513          	addi	a0,a0,-1344 # 80008590 <digits+0x48>
    80006ad8:	fffff097          	auipc	ra,0xfffff
    80006adc:	154080e7          	jalr	340(ra) # 80005c2c <panic>
    80006ae0:	00002517          	auipc	a0,0x2
    80006ae4:	a9850513          	addi	a0,a0,-1384 # 80008578 <digits+0x30>
    80006ae8:	fffff097          	auipc	ra,0xfffff
    80006aec:	144080e7          	jalr	324(ra) # 80005c2c <panic>

0000000080006af0 <holding>:
    80006af0:	00052783          	lw	a5,0(a0)
    80006af4:	00079663          	bnez	a5,80006b00 <holding+0x10>
    80006af8:	00000513          	li	a0,0
    80006afc:	00008067          	ret
    80006b00:	fe010113          	addi	sp,sp,-32
    80006b04:	00813823          	sd	s0,16(sp)
    80006b08:	00913423          	sd	s1,8(sp)
    80006b0c:	00113c23          	sd	ra,24(sp)
    80006b10:	02010413          	addi	s0,sp,32
    80006b14:	01053483          	ld	s1,16(a0)
    80006b18:	ffffe097          	auipc	ra,0xffffe
    80006b1c:	754080e7          	jalr	1876(ra) # 8000526c <mycpu>
    80006b20:	01813083          	ld	ra,24(sp)
    80006b24:	01013403          	ld	s0,16(sp)
    80006b28:	40a48533          	sub	a0,s1,a0
    80006b2c:	00153513          	seqz	a0,a0
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00008067          	ret

0000000080006b3c <push_off>:
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00813823          	sd	s0,16(sp)
    80006b44:	00113c23          	sd	ra,24(sp)
    80006b48:	00913423          	sd	s1,8(sp)
    80006b4c:	02010413          	addi	s0,sp,32
    80006b50:	100024f3          	csrr	s1,sstatus
    80006b54:	100027f3          	csrr	a5,sstatus
    80006b58:	ffd7f793          	andi	a5,a5,-3
    80006b5c:	10079073          	csrw	sstatus,a5
    80006b60:	ffffe097          	auipc	ra,0xffffe
    80006b64:	70c080e7          	jalr	1804(ra) # 8000526c <mycpu>
    80006b68:	07852783          	lw	a5,120(a0)
    80006b6c:	02078663          	beqz	a5,80006b98 <push_off+0x5c>
    80006b70:	ffffe097          	auipc	ra,0xffffe
    80006b74:	6fc080e7          	jalr	1788(ra) # 8000526c <mycpu>
    80006b78:	07852783          	lw	a5,120(a0)
    80006b7c:	01813083          	ld	ra,24(sp)
    80006b80:	01013403          	ld	s0,16(sp)
    80006b84:	0017879b          	addiw	a5,a5,1
    80006b88:	06f52c23          	sw	a5,120(a0)
    80006b8c:	00813483          	ld	s1,8(sp)
    80006b90:	02010113          	addi	sp,sp,32
    80006b94:	00008067          	ret
    80006b98:	0014d493          	srli	s1,s1,0x1
    80006b9c:	ffffe097          	auipc	ra,0xffffe
    80006ba0:	6d0080e7          	jalr	1744(ra) # 8000526c <mycpu>
    80006ba4:	0014f493          	andi	s1,s1,1
    80006ba8:	06952e23          	sw	s1,124(a0)
    80006bac:	fc5ff06f          	j	80006b70 <push_off+0x34>

0000000080006bb0 <pop_off>:
    80006bb0:	ff010113          	addi	sp,sp,-16
    80006bb4:	00813023          	sd	s0,0(sp)
    80006bb8:	00113423          	sd	ra,8(sp)
    80006bbc:	01010413          	addi	s0,sp,16
    80006bc0:	ffffe097          	auipc	ra,0xffffe
    80006bc4:	6ac080e7          	jalr	1708(ra) # 8000526c <mycpu>
    80006bc8:	100027f3          	csrr	a5,sstatus
    80006bcc:	0027f793          	andi	a5,a5,2
    80006bd0:	04079663          	bnez	a5,80006c1c <pop_off+0x6c>
    80006bd4:	07852783          	lw	a5,120(a0)
    80006bd8:	02f05a63          	blez	a5,80006c0c <pop_off+0x5c>
    80006bdc:	fff7871b          	addiw	a4,a5,-1
    80006be0:	06e52c23          	sw	a4,120(a0)
    80006be4:	00071c63          	bnez	a4,80006bfc <pop_off+0x4c>
    80006be8:	07c52783          	lw	a5,124(a0)
    80006bec:	00078863          	beqz	a5,80006bfc <pop_off+0x4c>
    80006bf0:	100027f3          	csrr	a5,sstatus
    80006bf4:	0027e793          	ori	a5,a5,2
    80006bf8:	10079073          	csrw	sstatus,a5
    80006bfc:	00813083          	ld	ra,8(sp)
    80006c00:	00013403          	ld	s0,0(sp)
    80006c04:	01010113          	addi	sp,sp,16
    80006c08:	00008067          	ret
    80006c0c:	00002517          	auipc	a0,0x2
    80006c10:	98450513          	addi	a0,a0,-1660 # 80008590 <digits+0x48>
    80006c14:	fffff097          	auipc	ra,0xfffff
    80006c18:	018080e7          	jalr	24(ra) # 80005c2c <panic>
    80006c1c:	00002517          	auipc	a0,0x2
    80006c20:	95c50513          	addi	a0,a0,-1700 # 80008578 <digits+0x30>
    80006c24:	fffff097          	auipc	ra,0xfffff
    80006c28:	008080e7          	jalr	8(ra) # 80005c2c <panic>

0000000080006c2c <push_on>:
    80006c2c:	fe010113          	addi	sp,sp,-32
    80006c30:	00813823          	sd	s0,16(sp)
    80006c34:	00113c23          	sd	ra,24(sp)
    80006c38:	00913423          	sd	s1,8(sp)
    80006c3c:	02010413          	addi	s0,sp,32
    80006c40:	100024f3          	csrr	s1,sstatus
    80006c44:	100027f3          	csrr	a5,sstatus
    80006c48:	0027e793          	ori	a5,a5,2
    80006c4c:	10079073          	csrw	sstatus,a5
    80006c50:	ffffe097          	auipc	ra,0xffffe
    80006c54:	61c080e7          	jalr	1564(ra) # 8000526c <mycpu>
    80006c58:	07852783          	lw	a5,120(a0)
    80006c5c:	02078663          	beqz	a5,80006c88 <push_on+0x5c>
    80006c60:	ffffe097          	auipc	ra,0xffffe
    80006c64:	60c080e7          	jalr	1548(ra) # 8000526c <mycpu>
    80006c68:	07852783          	lw	a5,120(a0)
    80006c6c:	01813083          	ld	ra,24(sp)
    80006c70:	01013403          	ld	s0,16(sp)
    80006c74:	0017879b          	addiw	a5,a5,1
    80006c78:	06f52c23          	sw	a5,120(a0)
    80006c7c:	00813483          	ld	s1,8(sp)
    80006c80:	02010113          	addi	sp,sp,32
    80006c84:	00008067          	ret
    80006c88:	0014d493          	srli	s1,s1,0x1
    80006c8c:	ffffe097          	auipc	ra,0xffffe
    80006c90:	5e0080e7          	jalr	1504(ra) # 8000526c <mycpu>
    80006c94:	0014f493          	andi	s1,s1,1
    80006c98:	06952e23          	sw	s1,124(a0)
    80006c9c:	fc5ff06f          	j	80006c60 <push_on+0x34>

0000000080006ca0 <pop_on>:
    80006ca0:	ff010113          	addi	sp,sp,-16
    80006ca4:	00813023          	sd	s0,0(sp)
    80006ca8:	00113423          	sd	ra,8(sp)
    80006cac:	01010413          	addi	s0,sp,16
    80006cb0:	ffffe097          	auipc	ra,0xffffe
    80006cb4:	5bc080e7          	jalr	1468(ra) # 8000526c <mycpu>
    80006cb8:	100027f3          	csrr	a5,sstatus
    80006cbc:	0027f793          	andi	a5,a5,2
    80006cc0:	04078463          	beqz	a5,80006d08 <pop_on+0x68>
    80006cc4:	07852783          	lw	a5,120(a0)
    80006cc8:	02f05863          	blez	a5,80006cf8 <pop_on+0x58>
    80006ccc:	fff7879b          	addiw	a5,a5,-1
    80006cd0:	06f52c23          	sw	a5,120(a0)
    80006cd4:	07853783          	ld	a5,120(a0)
    80006cd8:	00079863          	bnez	a5,80006ce8 <pop_on+0x48>
    80006cdc:	100027f3          	csrr	a5,sstatus
    80006ce0:	ffd7f793          	andi	a5,a5,-3
    80006ce4:	10079073          	csrw	sstatus,a5
    80006ce8:	00813083          	ld	ra,8(sp)
    80006cec:	00013403          	ld	s0,0(sp)
    80006cf0:	01010113          	addi	sp,sp,16
    80006cf4:	00008067          	ret
    80006cf8:	00002517          	auipc	a0,0x2
    80006cfc:	8c050513          	addi	a0,a0,-1856 # 800085b8 <digits+0x70>
    80006d00:	fffff097          	auipc	ra,0xfffff
    80006d04:	f2c080e7          	jalr	-212(ra) # 80005c2c <panic>
    80006d08:	00002517          	auipc	a0,0x2
    80006d0c:	89050513          	addi	a0,a0,-1904 # 80008598 <digits+0x50>
    80006d10:	fffff097          	auipc	ra,0xfffff
    80006d14:	f1c080e7          	jalr	-228(ra) # 80005c2c <panic>

0000000080006d18 <__memset>:
    80006d18:	ff010113          	addi	sp,sp,-16
    80006d1c:	00813423          	sd	s0,8(sp)
    80006d20:	01010413          	addi	s0,sp,16
    80006d24:	1a060e63          	beqz	a2,80006ee0 <__memset+0x1c8>
    80006d28:	40a007b3          	neg	a5,a0
    80006d2c:	0077f793          	andi	a5,a5,7
    80006d30:	00778693          	addi	a3,a5,7
    80006d34:	00b00813          	li	a6,11
    80006d38:	0ff5f593          	andi	a1,a1,255
    80006d3c:	fff6071b          	addiw	a4,a2,-1
    80006d40:	1b06e663          	bltu	a3,a6,80006eec <__memset+0x1d4>
    80006d44:	1cd76463          	bltu	a4,a3,80006f0c <__memset+0x1f4>
    80006d48:	1a078e63          	beqz	a5,80006f04 <__memset+0x1ec>
    80006d4c:	00b50023          	sb	a1,0(a0)
    80006d50:	00100713          	li	a4,1
    80006d54:	1ae78463          	beq	a5,a4,80006efc <__memset+0x1e4>
    80006d58:	00b500a3          	sb	a1,1(a0)
    80006d5c:	00200713          	li	a4,2
    80006d60:	1ae78a63          	beq	a5,a4,80006f14 <__memset+0x1fc>
    80006d64:	00b50123          	sb	a1,2(a0)
    80006d68:	00300713          	li	a4,3
    80006d6c:	18e78463          	beq	a5,a4,80006ef4 <__memset+0x1dc>
    80006d70:	00b501a3          	sb	a1,3(a0)
    80006d74:	00400713          	li	a4,4
    80006d78:	1ae78263          	beq	a5,a4,80006f1c <__memset+0x204>
    80006d7c:	00b50223          	sb	a1,4(a0)
    80006d80:	00500713          	li	a4,5
    80006d84:	1ae78063          	beq	a5,a4,80006f24 <__memset+0x20c>
    80006d88:	00b502a3          	sb	a1,5(a0)
    80006d8c:	00700713          	li	a4,7
    80006d90:	18e79e63          	bne	a5,a4,80006f2c <__memset+0x214>
    80006d94:	00b50323          	sb	a1,6(a0)
    80006d98:	00700e93          	li	t4,7
    80006d9c:	00859713          	slli	a4,a1,0x8
    80006da0:	00e5e733          	or	a4,a1,a4
    80006da4:	01059e13          	slli	t3,a1,0x10
    80006da8:	01c76e33          	or	t3,a4,t3
    80006dac:	01859313          	slli	t1,a1,0x18
    80006db0:	006e6333          	or	t1,t3,t1
    80006db4:	02059893          	slli	a7,a1,0x20
    80006db8:	40f60e3b          	subw	t3,a2,a5
    80006dbc:	011368b3          	or	a7,t1,a7
    80006dc0:	02859813          	slli	a6,a1,0x28
    80006dc4:	0108e833          	or	a6,a7,a6
    80006dc8:	03059693          	slli	a3,a1,0x30
    80006dcc:	003e589b          	srliw	a7,t3,0x3
    80006dd0:	00d866b3          	or	a3,a6,a3
    80006dd4:	03859713          	slli	a4,a1,0x38
    80006dd8:	00389813          	slli	a6,a7,0x3
    80006ddc:	00f507b3          	add	a5,a0,a5
    80006de0:	00e6e733          	or	a4,a3,a4
    80006de4:	000e089b          	sext.w	a7,t3
    80006de8:	00f806b3          	add	a3,a6,a5
    80006dec:	00e7b023          	sd	a4,0(a5)
    80006df0:	00878793          	addi	a5,a5,8
    80006df4:	fed79ce3          	bne	a5,a3,80006dec <__memset+0xd4>
    80006df8:	ff8e7793          	andi	a5,t3,-8
    80006dfc:	0007871b          	sext.w	a4,a5
    80006e00:	01d787bb          	addw	a5,a5,t4
    80006e04:	0ce88e63          	beq	a7,a4,80006ee0 <__memset+0x1c8>
    80006e08:	00f50733          	add	a4,a0,a5
    80006e0c:	00b70023          	sb	a1,0(a4)
    80006e10:	0017871b          	addiw	a4,a5,1
    80006e14:	0cc77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e18:	00e50733          	add	a4,a0,a4
    80006e1c:	00b70023          	sb	a1,0(a4)
    80006e20:	0027871b          	addiw	a4,a5,2
    80006e24:	0ac77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e28:	00e50733          	add	a4,a0,a4
    80006e2c:	00b70023          	sb	a1,0(a4)
    80006e30:	0037871b          	addiw	a4,a5,3
    80006e34:	0ac77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e38:	00e50733          	add	a4,a0,a4
    80006e3c:	00b70023          	sb	a1,0(a4)
    80006e40:	0047871b          	addiw	a4,a5,4
    80006e44:	08c77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e48:	00e50733          	add	a4,a0,a4
    80006e4c:	00b70023          	sb	a1,0(a4)
    80006e50:	0057871b          	addiw	a4,a5,5
    80006e54:	08c77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e58:	00e50733          	add	a4,a0,a4
    80006e5c:	00b70023          	sb	a1,0(a4)
    80006e60:	0067871b          	addiw	a4,a5,6
    80006e64:	06c77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e68:	00e50733          	add	a4,a0,a4
    80006e6c:	00b70023          	sb	a1,0(a4)
    80006e70:	0077871b          	addiw	a4,a5,7
    80006e74:	06c77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e78:	00e50733          	add	a4,a0,a4
    80006e7c:	00b70023          	sb	a1,0(a4)
    80006e80:	0087871b          	addiw	a4,a5,8
    80006e84:	04c77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e88:	00e50733          	add	a4,a0,a4
    80006e8c:	00b70023          	sb	a1,0(a4)
    80006e90:	0097871b          	addiw	a4,a5,9
    80006e94:	04c77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006e98:	00e50733          	add	a4,a0,a4
    80006e9c:	00b70023          	sb	a1,0(a4)
    80006ea0:	00a7871b          	addiw	a4,a5,10
    80006ea4:	02c77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006ea8:	00e50733          	add	a4,a0,a4
    80006eac:	00b70023          	sb	a1,0(a4)
    80006eb0:	00b7871b          	addiw	a4,a5,11
    80006eb4:	02c77663          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006eb8:	00e50733          	add	a4,a0,a4
    80006ebc:	00b70023          	sb	a1,0(a4)
    80006ec0:	00c7871b          	addiw	a4,a5,12
    80006ec4:	00c77e63          	bgeu	a4,a2,80006ee0 <__memset+0x1c8>
    80006ec8:	00e50733          	add	a4,a0,a4
    80006ecc:	00b70023          	sb	a1,0(a4)
    80006ed0:	00d7879b          	addiw	a5,a5,13
    80006ed4:	00c7f663          	bgeu	a5,a2,80006ee0 <__memset+0x1c8>
    80006ed8:	00f507b3          	add	a5,a0,a5
    80006edc:	00b78023          	sb	a1,0(a5)
    80006ee0:	00813403          	ld	s0,8(sp)
    80006ee4:	01010113          	addi	sp,sp,16
    80006ee8:	00008067          	ret
    80006eec:	00b00693          	li	a3,11
    80006ef0:	e55ff06f          	j	80006d44 <__memset+0x2c>
    80006ef4:	00300e93          	li	t4,3
    80006ef8:	ea5ff06f          	j	80006d9c <__memset+0x84>
    80006efc:	00100e93          	li	t4,1
    80006f00:	e9dff06f          	j	80006d9c <__memset+0x84>
    80006f04:	00000e93          	li	t4,0
    80006f08:	e95ff06f          	j	80006d9c <__memset+0x84>
    80006f0c:	00000793          	li	a5,0
    80006f10:	ef9ff06f          	j	80006e08 <__memset+0xf0>
    80006f14:	00200e93          	li	t4,2
    80006f18:	e85ff06f          	j	80006d9c <__memset+0x84>
    80006f1c:	00400e93          	li	t4,4
    80006f20:	e7dff06f          	j	80006d9c <__memset+0x84>
    80006f24:	00500e93          	li	t4,5
    80006f28:	e75ff06f          	j	80006d9c <__memset+0x84>
    80006f2c:	00600e93          	li	t4,6
    80006f30:	e6dff06f          	j	80006d9c <__memset+0x84>

0000000080006f34 <__memmove>:
    80006f34:	ff010113          	addi	sp,sp,-16
    80006f38:	00813423          	sd	s0,8(sp)
    80006f3c:	01010413          	addi	s0,sp,16
    80006f40:	0e060863          	beqz	a2,80007030 <__memmove+0xfc>
    80006f44:	fff6069b          	addiw	a3,a2,-1
    80006f48:	0006881b          	sext.w	a6,a3
    80006f4c:	0ea5e863          	bltu	a1,a0,8000703c <__memmove+0x108>
    80006f50:	00758713          	addi	a4,a1,7
    80006f54:	00a5e7b3          	or	a5,a1,a0
    80006f58:	40a70733          	sub	a4,a4,a0
    80006f5c:	0077f793          	andi	a5,a5,7
    80006f60:	00f73713          	sltiu	a4,a4,15
    80006f64:	00174713          	xori	a4,a4,1
    80006f68:	0017b793          	seqz	a5,a5
    80006f6c:	00e7f7b3          	and	a5,a5,a4
    80006f70:	10078863          	beqz	a5,80007080 <__memmove+0x14c>
    80006f74:	00900793          	li	a5,9
    80006f78:	1107f463          	bgeu	a5,a6,80007080 <__memmove+0x14c>
    80006f7c:	0036581b          	srliw	a6,a2,0x3
    80006f80:	fff8081b          	addiw	a6,a6,-1
    80006f84:	02081813          	slli	a6,a6,0x20
    80006f88:	01d85893          	srli	a7,a6,0x1d
    80006f8c:	00858813          	addi	a6,a1,8
    80006f90:	00058793          	mv	a5,a1
    80006f94:	00050713          	mv	a4,a0
    80006f98:	01088833          	add	a6,a7,a6
    80006f9c:	0007b883          	ld	a7,0(a5)
    80006fa0:	00878793          	addi	a5,a5,8
    80006fa4:	00870713          	addi	a4,a4,8
    80006fa8:	ff173c23          	sd	a7,-8(a4)
    80006fac:	ff0798e3          	bne	a5,a6,80006f9c <__memmove+0x68>
    80006fb0:	ff867713          	andi	a4,a2,-8
    80006fb4:	02071793          	slli	a5,a4,0x20
    80006fb8:	0207d793          	srli	a5,a5,0x20
    80006fbc:	00f585b3          	add	a1,a1,a5
    80006fc0:	40e686bb          	subw	a3,a3,a4
    80006fc4:	00f507b3          	add	a5,a0,a5
    80006fc8:	06e60463          	beq	a2,a4,80007030 <__memmove+0xfc>
    80006fcc:	0005c703          	lbu	a4,0(a1)
    80006fd0:	00e78023          	sb	a4,0(a5)
    80006fd4:	04068e63          	beqz	a3,80007030 <__memmove+0xfc>
    80006fd8:	0015c603          	lbu	a2,1(a1)
    80006fdc:	00100713          	li	a4,1
    80006fe0:	00c780a3          	sb	a2,1(a5)
    80006fe4:	04e68663          	beq	a3,a4,80007030 <__memmove+0xfc>
    80006fe8:	0025c603          	lbu	a2,2(a1)
    80006fec:	00200713          	li	a4,2
    80006ff0:	00c78123          	sb	a2,2(a5)
    80006ff4:	02e68e63          	beq	a3,a4,80007030 <__memmove+0xfc>
    80006ff8:	0035c603          	lbu	a2,3(a1)
    80006ffc:	00300713          	li	a4,3
    80007000:	00c781a3          	sb	a2,3(a5)
    80007004:	02e68663          	beq	a3,a4,80007030 <__memmove+0xfc>
    80007008:	0045c603          	lbu	a2,4(a1)
    8000700c:	00400713          	li	a4,4
    80007010:	00c78223          	sb	a2,4(a5)
    80007014:	00e68e63          	beq	a3,a4,80007030 <__memmove+0xfc>
    80007018:	0055c603          	lbu	a2,5(a1)
    8000701c:	00500713          	li	a4,5
    80007020:	00c782a3          	sb	a2,5(a5)
    80007024:	00e68663          	beq	a3,a4,80007030 <__memmove+0xfc>
    80007028:	0065c703          	lbu	a4,6(a1)
    8000702c:	00e78323          	sb	a4,6(a5)
    80007030:	00813403          	ld	s0,8(sp)
    80007034:	01010113          	addi	sp,sp,16
    80007038:	00008067          	ret
    8000703c:	02061713          	slli	a4,a2,0x20
    80007040:	02075713          	srli	a4,a4,0x20
    80007044:	00e587b3          	add	a5,a1,a4
    80007048:	f0f574e3          	bgeu	a0,a5,80006f50 <__memmove+0x1c>
    8000704c:	02069613          	slli	a2,a3,0x20
    80007050:	02065613          	srli	a2,a2,0x20
    80007054:	fff64613          	not	a2,a2
    80007058:	00e50733          	add	a4,a0,a4
    8000705c:	00c78633          	add	a2,a5,a2
    80007060:	fff7c683          	lbu	a3,-1(a5)
    80007064:	fff78793          	addi	a5,a5,-1
    80007068:	fff70713          	addi	a4,a4,-1
    8000706c:	00d70023          	sb	a3,0(a4)
    80007070:	fec798e3          	bne	a5,a2,80007060 <__memmove+0x12c>
    80007074:	00813403          	ld	s0,8(sp)
    80007078:	01010113          	addi	sp,sp,16
    8000707c:	00008067          	ret
    80007080:	02069713          	slli	a4,a3,0x20
    80007084:	02075713          	srli	a4,a4,0x20
    80007088:	00170713          	addi	a4,a4,1
    8000708c:	00e50733          	add	a4,a0,a4
    80007090:	00050793          	mv	a5,a0
    80007094:	0005c683          	lbu	a3,0(a1)
    80007098:	00178793          	addi	a5,a5,1
    8000709c:	00158593          	addi	a1,a1,1
    800070a0:	fed78fa3          	sb	a3,-1(a5)
    800070a4:	fee798e3          	bne	a5,a4,80007094 <__memmove+0x160>
    800070a8:	f89ff06f          	j	80007030 <__memmove+0xfc>

00000000800070ac <__putc>:
    800070ac:	fe010113          	addi	sp,sp,-32
    800070b0:	00813823          	sd	s0,16(sp)
    800070b4:	00113c23          	sd	ra,24(sp)
    800070b8:	02010413          	addi	s0,sp,32
    800070bc:	00050793          	mv	a5,a0
    800070c0:	fef40593          	addi	a1,s0,-17
    800070c4:	00100613          	li	a2,1
    800070c8:	00000513          	li	a0,0
    800070cc:	fef407a3          	sb	a5,-17(s0)
    800070d0:	fffff097          	auipc	ra,0xfffff
    800070d4:	b3c080e7          	jalr	-1220(ra) # 80005c0c <console_write>
    800070d8:	01813083          	ld	ra,24(sp)
    800070dc:	01013403          	ld	s0,16(sp)
    800070e0:	02010113          	addi	sp,sp,32
    800070e4:	00008067          	ret

00000000800070e8 <__getc>:
    800070e8:	fe010113          	addi	sp,sp,-32
    800070ec:	00813823          	sd	s0,16(sp)
    800070f0:	00113c23          	sd	ra,24(sp)
    800070f4:	02010413          	addi	s0,sp,32
    800070f8:	fe840593          	addi	a1,s0,-24
    800070fc:	00100613          	li	a2,1
    80007100:	00000513          	li	a0,0
    80007104:	fffff097          	auipc	ra,0xfffff
    80007108:	ae8080e7          	jalr	-1304(ra) # 80005bec <console_read>
    8000710c:	fe844503          	lbu	a0,-24(s0)
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	01013403          	ld	s0,16(sp)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00008067          	ret

0000000080007120 <console_handler>:
    80007120:	fe010113          	addi	sp,sp,-32
    80007124:	00813823          	sd	s0,16(sp)
    80007128:	00113c23          	sd	ra,24(sp)
    8000712c:	00913423          	sd	s1,8(sp)
    80007130:	02010413          	addi	s0,sp,32
    80007134:	14202773          	csrr	a4,scause
    80007138:	100027f3          	csrr	a5,sstatus
    8000713c:	0027f793          	andi	a5,a5,2
    80007140:	06079e63          	bnez	a5,800071bc <console_handler+0x9c>
    80007144:	00074c63          	bltz	a4,8000715c <console_handler+0x3c>
    80007148:	01813083          	ld	ra,24(sp)
    8000714c:	01013403          	ld	s0,16(sp)
    80007150:	00813483          	ld	s1,8(sp)
    80007154:	02010113          	addi	sp,sp,32
    80007158:	00008067          	ret
    8000715c:	0ff77713          	andi	a4,a4,255
    80007160:	00900793          	li	a5,9
    80007164:	fef712e3          	bne	a4,a5,80007148 <console_handler+0x28>
    80007168:	ffffe097          	auipc	ra,0xffffe
    8000716c:	6dc080e7          	jalr	1756(ra) # 80005844 <plic_claim>
    80007170:	00a00793          	li	a5,10
    80007174:	00050493          	mv	s1,a0
    80007178:	02f50c63          	beq	a0,a5,800071b0 <console_handler+0x90>
    8000717c:	fc0506e3          	beqz	a0,80007148 <console_handler+0x28>
    80007180:	00050593          	mv	a1,a0
    80007184:	00001517          	auipc	a0,0x1
    80007188:	33c50513          	addi	a0,a0,828 # 800084c0 <CONSOLE_STATUS+0x4b0>
    8000718c:	fffff097          	auipc	ra,0xfffff
    80007190:	afc080e7          	jalr	-1284(ra) # 80005c88 <__printf>
    80007194:	01013403          	ld	s0,16(sp)
    80007198:	01813083          	ld	ra,24(sp)
    8000719c:	00048513          	mv	a0,s1
    800071a0:	00813483          	ld	s1,8(sp)
    800071a4:	02010113          	addi	sp,sp,32
    800071a8:	ffffe317          	auipc	t1,0xffffe
    800071ac:	6d430067          	jr	1748(t1) # 8000587c <plic_complete>
    800071b0:	fffff097          	auipc	ra,0xfffff
    800071b4:	3e0080e7          	jalr	992(ra) # 80006590 <uartintr>
    800071b8:	fddff06f          	j	80007194 <console_handler+0x74>
    800071bc:	00001517          	auipc	a0,0x1
    800071c0:	40450513          	addi	a0,a0,1028 # 800085c0 <digits+0x78>
    800071c4:	fffff097          	auipc	ra,0xfffff
    800071c8:	a68080e7          	jalr	-1432(ra) # 80005c2c <panic>
	...
