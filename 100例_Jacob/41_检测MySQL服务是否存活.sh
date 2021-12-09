#!/bin/bash
#Author:丁丁历险(Jacob)
#host 为你需要检测的 MySQL 主机的 IP 地址，user 为 MySQL 账户名，passwd 为密码
#这些信息需要根据实际情况修改后方可使用
host=127.0.0.1
user=root
passwd=123456
mysqladmin -h 127.0.0.1 -u root -p'$passwd' ping &>/dev/null
if [ $? -eq 0 ];then
 echo "MySQL is UP"
else
 echo "MySQL is down"
fi