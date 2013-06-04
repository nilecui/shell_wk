#! /bin/sh 

function show_name(){
    echo "今天是 $1,名字 $2 ，来至 $3."
}

name="$1"

ip="192.168.1.31"
today=`date +%F`

echo "\$#="$#

if [ $# !=1 ]; 
then
    echo "Usage: . /$0 [使用者名称]"
    exit
fi

show_name "$today" "$name" "$ip"
sleep 5
echo
echo "Bye-Bye ;-)"
