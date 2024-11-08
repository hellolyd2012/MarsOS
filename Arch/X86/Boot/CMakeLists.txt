# 创建于2024.11.8
# MarsOS X86 Boot CMake构建文件
# 其源码遵循GNU-LGPl V3.0

set(TargetName Boot)
set(SourceFile)

file(GLOB SourceFile "${CMAKE_CURRENT_SOURCE_DIR}/*.S"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.c"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")

if(SourceFile)
    add_library(${TargetName} ${SourceFile})
else()
    message(FATAL_ERROR "Boot没有源文件")
endif()

target_link_libraries(
    ${TargetName}
)