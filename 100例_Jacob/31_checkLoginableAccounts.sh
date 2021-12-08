#!/bin/bash
#方法 1:
grep "bash$" /etc/passwd | wc -l

#方法 2:
awk -f '/bash$/{x++}end{print x}' /etc/passwd
