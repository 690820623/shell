#!/bin/bash
jindu(){
while :
do
	echo -n '#'
	sleep 0.2
done
}
jindu &
cp -a $1 $2
killall $!
#上一个进程号
echo "拷贝完成"
