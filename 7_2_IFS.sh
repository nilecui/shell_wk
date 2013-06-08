#! /bin/bash 
echo "_${IFS:0:1}_"
echo "_${IFS:1:1}_"
echo "_${IFS:2:1}_"

#IFS 定义字段分割符，默认值为空格 tab 换行字符
str="test1 test2 test3 test4"

for i in $str
do
    echo $i
done

pl="root:x:0:0:root:/root:/bin/bash"

IFS=":"

j=0

for i in $pl
do
    j=$((j+1))

    echo 第 $j 个字段是 $i
done
