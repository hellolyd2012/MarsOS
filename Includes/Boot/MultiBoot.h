// 创建于2024.11.9
// MarsOS MultiBoot规范定义

#define MAGIC 0x1BADB002
#define ALI 0x03
#define CHECKSUM(CHECK)     -(MAGIC + CHECK)