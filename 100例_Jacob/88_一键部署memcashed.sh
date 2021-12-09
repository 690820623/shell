#!/bin/bash
#Author:丁丁历险(Jacob)
#脚本用来源码安装 memcached 服务器
#注意：如果软件的下载链接过期了，请更新 memcached 的下载链接
wget http://www.memcached.org/files/memcached-1.5.1.tar.gz
yum -y install gcc
tar -xf memcached-1.5.1.tar.gz
cd memcached-1.5.1
./configure
make
make install
