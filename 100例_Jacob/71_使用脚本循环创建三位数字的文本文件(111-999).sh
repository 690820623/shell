#!/bin/bash
#Author:丁丁历险(Jacob)
for i in {1..9}; do
    for j in {1..9}; do
        for k in {1..9}; do
            touch /tmp/$i$j$k.txt
        done
    done
done
