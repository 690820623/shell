#!/bin/bash
#循环测试用户的账户名和密码，最大测试 3 次，输入正确提示登录成功，否则提示登录失败
#用户名为 tom 并且密码为 123456
for i in {1..3}
do
read -p "请输入用户名:" user
read -p "请输入密码:" pass
if [ "$user" == 'tom' -a "$pass" == '123456' ];then
 echo "Login successful"
 exit
fi
done
echo "Login Failed"