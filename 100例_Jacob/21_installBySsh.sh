#!/bin/bash

expect <<EOF
spawn ssh 39.103.212.147
expect "yes/no" {send "yes\r"}
expect "password" {send "密码\r"}
expect "#" {send "yum -y install httpd\r"}
expect "#" {send "exit\t"}
EOF 

#如果没得到期望结果的话，send语句就直接跳过了。
