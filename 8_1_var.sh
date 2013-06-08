#! /bin/bash 

echo $((${j:-8}+2))


unset i

echo $((12+$i)) #错误写法=$((12+))

echo $((12+i))


declear -i a i q s=0
a=${1:-255}
mask="128 64 32 16 8 4 2 1"
bmap=

echo "1 的位数 128 64 32 16 8 4 2 1"
for i in $mask
do
    echo "***********************************************"
    q=$((a/i))
    echo q=$q

    ((s+=q))
    echo s=$s

    [ $q -gt 0 ] && bmap=$bmap"__1__" || bmap=$bmap"__0__"
    a=$((a-q*i))
    echo a=$a
done

echo " $s : $bmap"
