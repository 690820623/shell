#!/bin/bash
<<COMMENT
for i in "ls *.$1"
do
	mv $i ${i%.*}.$2
done
COMMENT


for i in `ls *.$1`
do
 echo mv "$i" "${i%.*}.$2"
#原书这里是“ls *.$1"，打印出来才知道为什么不对
 mv "$i" "${i%.*}.$2"
done
