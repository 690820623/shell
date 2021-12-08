#!/bin/bash
myping(){
ping -c2 -i0.3 -W1 $1 &>/dev/null
if [ $? -eq 0 ];then
	echo "$1 is up"
else
	echo "$1 is down"
fi
}
#内建一个函数，然后循环调用，相比之前就是不用等ping 的结果了
for i in {1..254}
do
	myping 192.168.4.$i &
done

#suddenly I realize that grammar is really not important. I know many words now.I can express at least the fifty percent of my thought. I must get used to express myself in English. I must not afraid to read English. 
