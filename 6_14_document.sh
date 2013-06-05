#! /bin/sh 

WOW='wow,greate!'

m1=$(cat <<HERE
Line 1 is good.
They are jack.
$WOW
HERE)
echo $m1

#多行注释
: <<DO-NOTTING
TEST
TEST
TEST
DO-NOTTING
