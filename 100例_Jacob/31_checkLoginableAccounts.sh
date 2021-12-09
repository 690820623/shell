#!/bin/bash
#方法 1:
grep "bash$" /etc/passwd | wc -l

#方法 2:
awk -f: '/bash$/{x++}end{print x}' /etc/passwd

#直接复制过来不理了，不知道这个bash后面的井号是啥意思，-f加冒号又是啥意思
