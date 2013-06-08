#! /bin/bash 

#命令替换样式
#变量名=$(命令)

#获得网卡ip信息
tmp=$(ifconfig eth0 | grep 'inet addr')
echo $tmp

#删除字符串
r=${tmp/inet addr:/}
echo $r

ip=${r/ Bcast*/}
echo ip=$ip
