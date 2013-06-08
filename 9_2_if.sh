#! /bin/bash 

usr='ols3'

if grep -q ^$ols3 /etc/passwd; then
    echo "$ols3账号存在"
fi


if ((2<10)); then
    echo 'True'
fi

#一行的形式
if ((2<10)); then echo 'True'; fi


#[]用于条件测试，-d会检测目录是否存在

#-e filename 如果 filename存在，则为真
#-d filename 如果 filename为目录，则为真 
#-f filename 如果 filename为常规文件，则为真
#-L filename 如果 filename为符号链接，则为真
#-r filename 如果 filename可读，则为真 
#-w filename 如果 filename可写，则为真 
#-x filename 如果 filename可执行，则为真
#-s filename 如果文件长度不为0，则为真
#-h filename 如果文件是软链接，则为真
#filename1 -nt filename2 如果 filename1比 filename2新，则为真。
#filename1 -ot filename2 如果 filename1比 filename2旧，则为真。
#-eq 等于
#-ne 不等于
#-gt 大于
#-ge 大于等于
#-lt 小于
#-le 小于等于


if [ -d /root/tmp/ ]; then
    echo '/root/tmp/存在'
else
    echo '/root/tmp/不存在'
fi


declare -i a b
a=$1;
b=$2;

if ((a<b)); then
    echo "$a 小于 $b"
elif ((a>b)); then
    echo "$a 大于 $b" 
else
    echo "$a 等于 $b"
fi


#let 用法

if let "a<b"; then
    echo "$a 小于 $b"
elif let "a>b"; then
    echo "$a 大于 $b"
else
    echo "$a 等于 $b"
fi
