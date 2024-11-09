# 创建于2024.11.9
# MarsOS Arch X86 CMake

set(TARGET_NAME Arch)

add_library(${TARGET_NAME} INTERFACE)

if (CMAKE_HOST_SYSTEM_PROCESSOR STREQUAL "x86_64")
    add_subdirectory(X86)
    target_link_libraries(${TARGET_NAME}
        INTERFACE
            X86)
else()
    message(FATAL_ERROR "目前支持X86架构")
endif()