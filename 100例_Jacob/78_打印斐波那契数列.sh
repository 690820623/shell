#!/bin/bash
#Author:丁丁历险(Jacob)
#斐波那契数列后一个数字永远是前 2 个数字之和
#如：0 1 1 2 3 5 8 13 … …
list=(0 1)
for i in $(seq 2 11); do
    list[$i]=$(expr ${list[-1]} + ${list[-2]})
done
echo ${list[@]}
