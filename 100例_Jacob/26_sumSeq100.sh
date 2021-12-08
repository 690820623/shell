#!/bin/bash
#seq 100 可以快速自动生成 100 个整数
sum=0
for i in $(seq 100); do
    sum=$((sum + i))
done
echo "总和是:$sum"
