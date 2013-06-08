#! /bin/bash 


name="nile nile nile"

len=$(expr length "$name")
echo name长度为：$len

#.*:代表任意多个字符串的字符串样式
len=$(expr "$name" : '.*')
echo name长度为：$len
