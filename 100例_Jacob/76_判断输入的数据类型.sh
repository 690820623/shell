#!/bin/bash
#Author:丁丁历险(Jacob)
read -p "请输入一个字符：" KEY
case "$KEY" in
[a-z] | [A-Z])
    echo "字母"
    ;;
[0-9])
    echo "数字"
    ;;
*)
    echo "空格、功能键或其他控制字符"
    ;;
esac
