//
// Created by os on 8/4/22.
//

#include "../h/setup.hpp"

int heapSetup() {

    MemoryAllocator::hStart = (void*)((uint64(HEAP_START_ADDR) + uint64(MEM_BLOCK_SIZE) - 1) &~ uint64(MEM_BLOCK_SIZE - 1));
    MemoryAllocator::hEnd = (void*)((uint64(HEAP_END_ADDR) + uint64(MEM_BLOCK_SIZE) - 1) &~ uint64(MEM_BLOCK_SIZE - 1));

    if (uint64(MemoryAllocator::hEnd) > (uint64) HEAP_END_ADDR)
        MemoryAllocator::hEnd = (void*)((uint64)MemoryAllocator::hEnd -(uint64)MEM_BLOCK_SIZE); // smanji za ceo blk ako adresa nije poravnata

    //inicijalizujemo blk header za prvi slobodan blok
    MemoryAllocator::freeMemHead = (BlockHeader*) MemoryAllocator::hStart;
    (*MemoryAllocator::freeMemHead).next = (*MemoryAllocator::freeMemHead).prev = nullptr;
    (*MemoryAllocator::freeMemHead).size = ((uint64)MemoryAllocator::hEnd - (uint64)MemoryAllocator::hStart)/MEM_BLOCK_SIZE; //velicina izrazena u br blokove
    return 0;
}