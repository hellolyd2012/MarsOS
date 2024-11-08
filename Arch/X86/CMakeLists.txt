# 创建于2024.11.8
# MarsOS X86 CMake构建文件
# 其源码遵循GNU-LGPl V3.0

set(TargetName X86)
set(SourceFile)

add_subdirectory(Boot)

file(GLOB SourceFile "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.c")

if(SourceFile)
    add_library(${TargetName} "")
    target_sources(${TargetName} PUBLIC ${SourceFile})
    target_link_libraries(${TargetName} PUBLIC Boot)
else()
    add_library(${TargetName} INTERFACE)
    target_link_libraries(${TargetName} INTERFACE Boot)
endif()