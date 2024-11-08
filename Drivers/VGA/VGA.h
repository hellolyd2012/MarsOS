// 创建于2024.11.8
// MarsOS VGA驱动
// 其源码遵循GNU-LGPl V3.0

#include <VGA/VGA.h>

void VgaInit(void* VGABuf)
{
    VGASetTheme(VGA_COLOR_CYAN,VGA_COLOR_BLACK);
}

void VGASetTheme(VgaTypes Fg, VgaTypes Bg)
{
}

VgaTypes VGAGetTheme()
{

}

void VGAFlushBuffer(struct fifo_buf* Buf)
{

}

void VVGAClearLine(int LineNum)
{

}

void VGAPutStrAt(char* Str, int X, int Y)
{

}

void VGASetCursor(uint8_t x, uint8_t y)
{

}