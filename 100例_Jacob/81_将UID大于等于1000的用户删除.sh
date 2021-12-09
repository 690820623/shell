#!/bin/bash
#Author:丁丁历险(Jacob)
#先用 awk 提取所有 uid 大于等于 1000 的普通用户名称
#再使用 for 循环逐个将每个用户删除即可
user=$(awk -F: '$3>=1000{print $1}' /etc/passwd)
for i in $user; do
    userdel -r $i
done
