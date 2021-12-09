#!/bin/bash
#Author:丁丁历险(Jacob)
#MAC 地址由 16 进制组成,如 AA:BB:CC:DD:EE:FF
#[0-9a-fA-F]{2}表示一段十六进制数值,{5}表示连续出现 5 组前置:的十六进制
egrep "[0-9a-fA-F]{2}(:[0-9a-fA-F]{2}){5}" $1
