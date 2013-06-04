#! /bin/bash 

#使字符串中的转义字符生效
printf "%b" "ABC\n123\nXYZ\n"

#不显示到标准输出，赋值给变量
printf -v myvar "%q" "ABC 123 XYZ"

#打印变量
printf "%s\n" "$myvar"

#
printf "%s\n" "ABCD" | tr '[A-Z]' '[a-z]'

