#! /bin/bash 

#取数组索引列表

a=(1 2 3 4 5 x y z)

for i in "${!a[@]}"
do 
    echo "index $i: ${a[$i]}"
done
