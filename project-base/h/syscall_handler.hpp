//
// Created by os on 8/5/22.
//

#ifndef PROJECT_BASE_SYSCALL_HANDLE_HPP
#define PROJECT_BASE_SYSCALL_HANDLE_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"

uint64 syscall_handler(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3);

#endif //PROJECT_BASE_SYSCALL_HANDLE_HPP
