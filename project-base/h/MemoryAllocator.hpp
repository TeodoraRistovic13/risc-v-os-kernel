//
// Created by os on 8/2/22.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

struct BlockHeader {
    
    BlockHeader* prev, *next;

    size_t size;
};

//sluzi da bih znala koliko mem da oslobodim sa free
struct HiddenHeader{
    
    size_t size;

};

class MemoryAllocator {

public:

    static void* kmalloc(size_t);

    static int kfree (void* addr);

   static BlockHeader* freeMemHead;

   static void* hStart;

   static void* hEnd;

   static uint64 allocateBytes(size_t size){ return (size - 1)/MEM_BLOCK_SIZE + 1; };

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
