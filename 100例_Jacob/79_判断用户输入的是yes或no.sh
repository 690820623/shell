#!/bin/bash
#Author:丁丁历险(Jacob)
read -p "Are you sure?[y/n]:" sure
case $sure in
y | Y | Yes | YES)
    echo "you enter $a"
    ;;
n | N | NO | no)
    echo "you enter $a"
    ;;
*)
    echo "error"
    ;;
esac
