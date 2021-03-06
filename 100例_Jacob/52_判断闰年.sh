#!/bin/bash
#Author:丁丁历险(Jacob)
#能被 4 整除并且并 100 整除的年是闰年
#能被 400 整除的年也是闰年
read -p "请输入一个年份:" year
if [ "$year" = "" ];then
 echo "没有输入年份"
 exit
fi
#使用正则测试变量 year 中是否包含大小写字母
if [[ "$year" =~ [a-Z] ]];then
 echo "你输入的不是数字"
 exit
fi
if [ $[year % 4] -eq 0 ] && [ $[year % 100] -ne 0 ];then
 echo "$year 是闰年" 
elif [ $[year % 400] -eq 0 ];then
 echo "$year 是闰年"
else
 echo "$year 不是闰年"
fi