// 创建于2024.11.9
// MarsOS Boot

#include <Boot/MultiBoot.h>

.section .MultiBoot
    .long MAGIC
    .long FLAGS
    .long CHECKSUM
    .long ModeType
    .long Width
    .long Height
    .long Depth

.section .bss
    .align 16
    StackTop:
        .skip 16318, 0
    StackBottom:

.section .text
    .global boot
    boot:
        movl $StackBottom, %esp

        pushl %esp

        call _KernelInit

        call _KernelMain

        cli

    Stop:
        hlt
        jmp Stop