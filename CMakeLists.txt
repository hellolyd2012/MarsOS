# 创建于2024.11.8
# MarsOS CMake构建文件
# 其源码遵循GNU-LGPl V3.0

cmake_minimum_required(VERSION 3.25)

project(MarsOS)

enable_language(C)
enable_language(CXX)
enable_language(ASM)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/Arch/X86/Linker.ld")

add_compile_options(-ffreestanding -nostdlib -fno-pie -fno-stack-protector -mcmodel=large -fno-asynchronous-unwind-tables -fno-exceptions)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -nostdlib -static")

include_directories(${CMAKE_SOURCE_DIR}/Includes)

add_subdirectory(Arch)

file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/Build.cpp" "")
add_executable(Kernel.bin "${CMAKE_CURRENT_BINARY_DIR}/Build.cpp")

target_link_libraries(Kernel.bin
    PRIVATE
        Arch
)