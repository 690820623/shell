#!/bin/bash
#Author:丁丁历险(Jacob)
#使用 trap 命令可以拦截用户通过键盘或 kill 命令发送过来的信号
#使用 kill -l 可以查看 Linux 系统中所有的信号列表，其中 2 代表 Ctrl+C
#trap 当发现有用户 ctrl+C 希望终端脚本时，就执行 echo "暂停 10s";sleep 10 这两条命令
#另外用户使用命令：[ kill -2 脚本的 PID ] 也可以中断脚本和 Ctrl+C 一样的效果，都会被 trap 拦截
trap 'echo "暂停 10s";sleep 10' 2
while :; do
    echo "go go go"
done
