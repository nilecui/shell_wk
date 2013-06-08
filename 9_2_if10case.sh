#! /bin/bash 

#命令1 | 命令2 | 命令3 成为pipeline 其结束状态为最后一个指令的执行结果
#-q 不显示

if grep -q "rm" ./4_1_test.sh; then
    echo "find rm command."
else
    echo "not found."
fi


#传回某一命令执行结果的相反值
if ! grep -q "rm" ./4_1_test.sh; then
    echo "not found."
else
    echo "find rm command."
fi

#使用bash关键字[[]]组成的式子:[[判断是]]

if [[ str>xyz ]]; then
    echo "字符串str比较大"
else
    echo "字符串xyz比较大"
fi


#使用内置命令：test判断式
#注意：>号对于bash而言是特殊字符，需要转义
if test "str" \> "xyz"; then
    echo "字符串str比较大"
else
    echo "字符串xyz比较大"
fi

#使用内置命令:[]
#形式：[ 判断式 ]
if [ "str" \> "xyz" ]; then
    echo "字符串str比较大"
else
    echo "字符串xyz比较大"
fi

#使用-a -o 进行逻辑组合
#-a 且
#-o 或
filename="./t1.txt"

if [ -r $filename -a -x $filename ]; then
    echo "$filename可读、可执行";
else
    echo "$filename不可读、不可执行";
fi


#&&用法
#-lt 是小于的意思
a=10
if grep -q "rm" ./t1.txt && [ $a -lt 100 ]; then
    echo "ok";
else
    echo "not ok!"
fi


#|| 是or的意思
a=200
if grep -q "rm" ./t1.txt || [ $a -lt 100 ]; then
    echo "ok"
else
    echo "not ok"
fi


#比较字符串样式

a="str"

if [[ $a == ??? ]]; then
    echo "Match"
fi

if [[ $a == '???' ]]; then
    echo "Match"
else
    echo "NOt Match"
fi

#判断样式
#*.的意思是，任意长度的字符串，且最后一个字符是.
str='abc 123 890990 .'
if [[ "$str" == *. ]]; then
    echo "变量str是一个字符串，则最后一个字符串是'.'"
fi

#*[.?\!]最后一个字符是'.','?','\','!'
str='abc 123 890990 .'
if [[ "$str" == *[.?\!] ]]; then
    echo "变量str是一个字符串，则最后一个字符是'.'、'?'、'\'、'!'其中一个字符."
fi


#=~ 右边放置想要对比的样式
#... 代表3个任意字符
#注意在=~右方的样式，不要使用引号，否则功能失效

a="str"
if [[ $a =~ ... ]]; then
    echo "Match!"
fi


a="str"
if [[ $a =~ .{3} ]]; then
    echo "Match!"
fi

#?????.+代表任意长度的字符串
#\.则转义.代表任意字符的意义，回到字符符号.的用法
a="str"
if [[ $a =~ .+\. ]]; then
    echo "Match!"
fi

