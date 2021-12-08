#!/bin/bash
#Author:丁丁历险(Jacob)
#awk 使用-F 选项指定文件内容的分隔符是/或者: #条件判断$7:$8 大于等于 13:30，并且要求，$7:$8 小于等于 14:30
#最后使用 wc -l 统计这样的数据有多少行，即多少个
awk -F "[ /:]" '$7":"$8>="13:30" && $7":"$8<="14:30"' /var/log/httpd/access_log |wc -l

 #this time string comparation is interesting