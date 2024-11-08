// 创建于2024.11.9
// MarsOS X86 Boot代码
// 其源码遵循GNU-LGPl V3.0

#include <Boot/MultiBoot.h>

.section .MultiBoot
    .long MAGIC
    .long ALI
    .long CHECKSUM(ALI)

.section .bss
    .align 16 // 16字节对齐
    StackTop: // 栈顶
        .skip 16318, 0 // 以0填充
    StackBottom: // 栈底

.section .text
    .global boot
    boot:
        movl $StackTop, %esp // 初始化栈指针

        pushl %esp

        call _Init // Init

        // 以下代码是_BootMain函数退出后

        cli // 禁用所有中断

    Stop:
        hlt // 暂停CPU
        jmp Stop