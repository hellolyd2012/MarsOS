/*# 创建于2024.11.8
# MarsOS X86链接脚本
# 其源码遵循GNU-LGPl V3.0
*/

ENTRY(start)
SECTIONS {
    .text BLOCK(4K) : {
        *(.text)
        *(.MultiBoot) /*MultiBoot规范*/
    }
    
    .bss BLOCK(4K) : {
        *(.bss)
        *(COMMON)
    }

    .data BLOCK(4K) : {
        *(.data)
    }
}