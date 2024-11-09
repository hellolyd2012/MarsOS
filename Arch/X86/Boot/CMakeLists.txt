# 创建于2024.11.9
# MarsOS Arch X86 Boot CMake

set(TARGET_NAME Boot)
set(SOURCE_FILE)

file(GLOB SOURCE_FILE "${CMAKE_CURRENT_SOURCE_DIR}/*.S"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.c"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp")

if(SOURCE_FILE)
    add_library(${TARGET_NAME} ${SOURCE_FILE})
else()
    message(FATAL_ERROR "Boo没有源文件!")
endif()

target_link_libraries(
    ${TARGET_NAME}
)