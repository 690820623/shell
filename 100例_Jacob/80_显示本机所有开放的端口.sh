#!/bin/bash
#Author:丁丁历险(Jacob)
#从端口列表中观测有没有没用的端口，有的话可以将该端口对应的服务关闭，防止意外的攻击可能性
ss -nutlp | awk '{print $1,$5}' | awk -F"[: ]" '{print "协议:"$1,"端口号:"$NF}' | grep "[0-9]" | uniq
