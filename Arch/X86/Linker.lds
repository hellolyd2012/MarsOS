/*MarsOS X86 链接脚本*/
ENTRY(boot)

SECTIONS {
    .text BLOCK(4K) : {
        *(.text)
        *(MultiBoot)
    }

    .bss BLOCK(4K) : {
        *(.bss)
        *(COMMON)
    }

    .data BLOCK(4K) : {
        *(.data)
    }
}