#! /bin/bash 

#利用特俗文件 /dev/null 只写文件,清空redis的日志，文件大小变为0，但文件仍然存在

cp /dev/null /home/redis/redis26/log-redis.log
