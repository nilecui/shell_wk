#! /bin/bash 

name="nile nile nile"

echo "原始字符串:$name"

#从第四个字符串开始截取
substr=${name:4}
echo "截取字符串:$substr"


substr1=${name:1:4}
echo "通过起点和长度参数截取字符串:$substr1"


