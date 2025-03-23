//
// Created by os on 8/2/22.
//

#include "../h/MemoryAllocator.hpp"
#include "../h/printing.hpp"

BlockHeader* MemoryAllocator::freeMemHead = nullptr;

void* MemoryAllocator::hStart = nullptr;

void* MemoryAllocator::hEnd = nullptr;

void* MemoryAllocator::kmalloc(size_t size){

    void* addr = nullptr; //pokazivac na alociranu memoriju
    BlockHeader* blk = MemoryAllocator::freeMemHead;
    for(;blk != nullptr && size > blk->size;blk = blk->next){ }

    if (blk == nullptr){
       return nullptr; // za sada
    }

    // ako je velcina bloka veca od potrebne za odredjenu velicinu uzimamo samo potrebno a vracamo visak
    if ((blk->size - size) >= (MEM_BLOCK_SIZE + sizeof(HiddenHeader))){
        //uzimamo koliko nam treba; nema dodatnog ulancavanja blok ostaje na istoj poziciji samo sa modifikovanom velicinom
        addr = (void*)((uint64)blk + (blk->size - size)*MEM_BLOCK_SIZE); //razmisli za - 1
        blk ->size -= size; // azuriramo velicinu bloka

    }else{
        addr = blk;
        //ulancavanje
        if(blk->prev != nullptr){
            blk-> prev = blk->next;
        }else{
            //moze da se desi da je i blk->next = nullptr; onda imamo nullptr u freeMemHead
            MemoryAllocator::freeMemHead = blk->next;
        }
    }

    (*(HiddenHeader*)addr).size = size;
    addr  = (void*)((uint64)addr + sizeof(HiddenHeader));
    return addr;
}

int MemoryAllocator::kfree (void* addr){

    //uint64 blkStartDel = (uint64)addr;
    addr = (void*)((uint64)addr - sizeof(HiddenHeader));
    //ako adresa nije poravnata na blok

    if ((char*)addr < MemoryAllocator::hStart || (char*)addr > MemoryAllocator::hEnd) return -1;
    //koliko memorije oslobadjamo
    size_t sz = ((HiddenHeader*)addr)->size;

    //pocetna inicijalizacija blockheader-a

    ((BlockHeader*)addr)->size = sz;
    ((BlockHeader*)addr)->next = ((BlockHeader*)addr)->prev = nullptr;
    BlockHeader* blk = MemoryAllocator::freeMemHead;

    //dodavanje u listu
    if (MemoryAllocator::freeMemHead == nullptr)
        MemoryAllocator::freeMemHead = (BlockHeader*)addr;
    //ulancavamo na pocetak
    else if (MemoryAllocator::freeMemHead >= addr) {
        ((BlockHeader*)addr)->next = MemoryAllocator::freeMemHead;
        ((BlockHeader*)addr)->next->prev = (BlockHeader*)addr;
        MemoryAllocator::freeMemHead = (BlockHeader*)addr;
    }
    else {

        for (;blk->next != nullptr && (blk->next) < addr; blk = blk->next){}

        /* Make the appropriate links */
        ((BlockHeader*)addr)->next = blk->next;
        ((BlockHeader*)addr)->prev = blk;
        if (blk->next != nullptr)
            (blk->next)->prev = (BlockHeader*)addr;

        blk->next = (BlockHeader*)addr;

    }

    blk = (BlockHeader*)addr;

    if (blk->prev != nullptr && (((uint64)blk->prev + (uint64)(blk->prev->size * MEM_BLOCK_SIZE)) == (uint64)blk)){
        BlockHeader* newBlk = blk->prev;
        newBlk->size += blk->size;
        newBlk->next = blk->next;
        if (blk->next != nullptr) blk->next->prev = newBlk;
        blk->size = 0;
        blk->next = blk-> prev = nullptr;
        blk = newBlk;
        //vise blok na adr adresi nije validan

    }
    //za desni blok
    if (blk->next != nullptr && (((uint64)blk + blk->size * MEM_BLOCK_SIZE)  == (uint64)blk->next)){

        BlockHeader* remove = blk->next;
        blk->size += remove->size;
        blk->next = remove->next;
        if (remove->next != nullptr) remove->next->prev = blk;
        //blk->next nije vise validan
        remove->next = remove->prev = nullptr;
        remove->size = 0;
    }

    //printString("Kaaj memfree\n");
    return 0;
};
