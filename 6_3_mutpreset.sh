#! /bin/bash 

#-s 打开选项
#-o 可用set -o 设定的选项
#nounset 表示变量一定要设定过，才能使用

shopt -s -o nounset

declare Infomix=50

echo $Infomix
