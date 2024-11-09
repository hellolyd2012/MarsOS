# 创建于2024.11.9
# MarsOS Arch X86 CMake

set(TARGET_NAME X86)
set(SOURCE_FILE)

add_subdirectory(Boot)

file(GLOB SOURCE_FILE "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.c"
                      "${CMAKE_CURRENT_SOURCE_DIR}/*.S")

if(SOURCE_FILE)
    add_library(${TARGET_NAME} "")
    target_sources(${TARGET_NAME} PUBLIC ${SOURCE_FILE})
    target_link_libraries(${TARGET_NAME} PUBLIC Boot)
else()
    add_library(${TARGET_NAME} INTERFACE)
    target_link_libraries(${TARGET_NAME} INTERFACE Boot)
endif()