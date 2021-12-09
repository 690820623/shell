#!/bin/bash
#Author:丁丁历险(Jacob)
#脚本配置的 VNC 服务器，客户端无需密码即可连接
#客户端仅有查看远程桌面的权限，没有鼠标和键盘的操作权限
rpm --quiet -q tigervnc-server
if [ $? -ne 0 ]; then
    yum -y tigervnc-server
fi
x0vncserver AcceptKeyEvents=0 AlwaysShared=1 \
    AcceptPointerEvents=0 SecurityTypes=None rfbport=5908
