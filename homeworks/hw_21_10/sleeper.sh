#!/bin/bash
for arr in {1..10}
do
date +"%H:%M:%S"
ps -ef | egrep -v PID | wc -l
# sleep 5s
done
cat /proc/cpuinfo > cpuinfo.txt
cat /etc/os-release | head -1 | sed 's/"//g' > osinfo.txt
cat /etc/os-release | head -1 | sed 's/NAME=//g' | sed 's/"//g' | sed 's/Linux//g' > osinfo.txt
defValue=50
for loop in {0..50}
do
let fileName=$defValue+${loop}
touch $fileName.txt
done
