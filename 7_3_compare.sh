#! /bin/bash 

filename="/usr/sbin/ntpdate"

# #表示由前面去最短的
echo $filename
r=${filename#/*/}
echo $r


filename="/sbin/he/update"
echo $filename
r=${filename#/*/}
echo $r


# ${变量##样式}
# 删除前面最长的

r=${filename##/*/}
echo $r


#由后面对比,删除最短的
r=${filename%/*}
echo $r

#由后面对比,删除最长的
filename="new.hello.good"
r=${filename%%.*}
echo $r

