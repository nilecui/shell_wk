#! /bin/bash 

#显示命令本身
echo $0


#1是起点
echo ${@:1}

echo ${@:3}

#1是个数
echo ${@:3:1}
