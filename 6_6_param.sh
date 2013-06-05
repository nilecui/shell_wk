#! /bin/bash 

name="nile"

#双引号
hello="Hi,my name is $name"
echo $hello

#单引号,形成一个所见即所得的
hello='Hi,my name is $name'
echo $hello

#恢复$单纯字符的租用
hello="Hi,my name is \$name"
echo $hello
