#! /bin/bash 
name="a:b:c:d"

echo 初始内容：$name

#替换第一个：
r=${name/:/,}
echo 替换内容：$r


#替换全部：
#${变量//样式/替换字符串}
r=${name//:/,}
echo 替换全部内容：$r
