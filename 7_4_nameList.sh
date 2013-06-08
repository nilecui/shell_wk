#! /bin/bash 

#${!开头字符串@}或${!开头字符串*}

filename="ntpdate"
dir="/usr/bin"
dir_file="$dir/$filename"

echo ${!di@}
