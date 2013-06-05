#! /bin/bash 

b=(1 2 3 4)
echo ${b[@]}
echo ${b[*]}

#取消数组元素
unset b[2]
echo ${b[*]}
