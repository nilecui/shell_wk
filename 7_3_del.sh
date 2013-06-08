#! /bin/bash 
name="a:b:c:d"

echo 初始内容：$name

#只删除一个
#${变量/样式/}

r=${name/:/}
echo 删除后内容：$r


#删除全部
#${变量//样式/}
r=${name//:/}
echo 删除全部内容：$r

##表示开头
#表示T字符开头，后人以长度，最后以空格符结尾的字符串
str="Yes, This is a Title!"
r=${str/#T* /}
echo $r

r=${str/T* /}
echo $r
