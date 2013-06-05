#! /bin/bash 

function show_name(){
    echo "Today is $1, age:$2,come from:$3"
}

#清除函数
#unset -f show_name

name=$1
ip="192.168.1.88"
today=`date +%F`
echo $today

echo $#

if [ $#!i = 1 ]; then
    echo "Usage: ./$0 [使用者名称]"
    exit
fi

show_name "$today" "$name" "$ip"
