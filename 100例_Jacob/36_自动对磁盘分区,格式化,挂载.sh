#!/bin/bash
#Author:丁丁历险(Jacob)
#对虚拟机的 vdb 磁盘进行分区格式化，使用<<将需要的分区指令导入给程序 fdisk
#n（新建分区），p（创建主分区），1（分区编号为 1），两个空白行（两个回车，相当于将整个磁盘分一个区）
#注意：1 后面的两个回车（空白行）是必须的！
fdisk /dev/vdb << EOF
np1
wq
EOF
#格式化刚刚创建好的分区
mkfs.xfs /dev/vdb1
#创建挂载点目录
if [ -e /data ]; then
exit
fi
mkdir /data
#自动挂载刚刚创建的分区，并设置开机自动挂载该分区
echo '/dev/vdb1 /data xfs defaults 1 2' >> /etc/fstab
mount -a