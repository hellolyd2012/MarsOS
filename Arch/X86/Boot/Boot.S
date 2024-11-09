// 创建于2024.11.9
// MarsOS X86 Boot

.code32

#include <Boot/MultiBoot.h>

.section .MultiBoot
    .long MAGIC
    .long ALI
    .long CHECKSUM(ALI)

.section .bss
    .align 16 // 16字节对齐
    StackTop:
        .skip 16318, 0
    StackBottom:

.section .text
    .global boot
    boot:
        movl $StackTop, %esp // 初始化栈指针

        pushl %esp

        call _Init // 初始化

        call _KernelMain // 进入内核

        cli // 禁用中断

    Stop:
        hlt
        jmp Stop