// 创建于2024.11.8
// MarsOS VGA驱动定义
// 其源码遵循GNU-LGPl V3.0

#ifndef MarsOS_VGA_MAIN_H

#include "Color.h"
#include "Typs.h"
#include <stdint.h>

#define Width 80
#define Height 25

void VgaInit(void* VGABuf);

void VGASetTheme(VgaTypes Fg, VgaTypes Bg);

VgaTypes VGAGetTheme();

void VGAFlushBuffer(struct fifo_buf* Buf);

void VVGAClearLine(int LineNum);

void VGAPutStrAt(char* Str, int X, int Y);

void VGASetCursor(uint8_t x, uint8_t y);

#endif