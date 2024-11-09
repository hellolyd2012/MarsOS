# 创建于2024.11.9
# MarsOS CMake

cmake_minimum_required(VERSION 3.12)

project(MarsOS)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED 20)

enable_language(C)
enable_language(CXX)
enable_language(ASM)

if (CMAKE_HOST_SYSTEM_PROCESSOR STREQUAL "x86_64")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/Arch/X86/Linker.lds")
else()
    message(FATAL_ERROR "目前支持X86架构")
endif()

add_compile_options(-ffreestanding -nostdlib -fno-pie -fno-stack-protector -mcmodel=large -fno-asynchronous-unwind-tables -fno-exceptions)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -nostdlib -z max-page-size=0x1000 -Wl,--build-id=none -static")

include_directories(${CMAKE_SOURCE_DIR}/Includes)

add_subdirectory(Arch)
add_subdirectory(Kernel)

file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/Build.cpp" "")
add_executable(Kernel.bin "${CMAKE_CURRENT_BINARY_DIR}/Build.cpp")

target_link_libraries(Kernel.bin
    PRIVATE
        Arch
        Kernel
)