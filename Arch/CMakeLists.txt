# 创建于2024.11.8
# MarsOS Arch CMake构建文件
# 其源码遵循GNU-LGPl V3.0

set(TargetName Arch)

add_library(${TargetName} INTERFACE)

# 选择架构
if(CMAKE_HOST_SYSTEM_PROCESSOR STREQUAL "x86_64")
    add_subdirectory(X86)
    target_link_libraries(${TargetName}
        INTERFACE
            X86)
endif()


