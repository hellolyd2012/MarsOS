# MarsOS Build脚本

# /bin/bash

# 设置默认值
BUILD_DIR=Build
BUILD_LAUNAGE=Ninja
Speed=12

echo "确保安装了Grub-Common xorriso Ninja Make GCC G++ CMake"
echo "开始编译MarsOS..."
echo "因为开发编译可能会出现CPU占用率达到100%的情况!"

rm -rf $BUILD_DIR

cmake -B $BUILD_DIR -G $BUILD_LAUNAGE
cd $BUILD_DIR

ninja -j $Speed