#! /bin/bash 


name="nile nile nile"

#显示字符串长度
#${#变量名称}
echo ${#name}

#取得数组元素个数
arr1=(1 2 3 4 5 6)

echo ${arr1[@]}

echo ${#arr1[@]}
echo ${#arr1[*]}
