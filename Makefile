# 创建于2024.11.9
# MarsOS Makefile
# 源码遵循GNU-LGPL V3.0开源协议

all:
	make -C Arch # 编译Arch目录
	make -C Kernel # 编译Kernel目录

debug:
	@qemu-system-x86_64