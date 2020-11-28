#!/bin/bash
clear
t=1
i=$(cat text)
for test in $i
do
	echo -n -e "\033[32m$test \033[00m"
	sleep 0.15
done;
echo -e "\033[31mAnd this game gonna end \033[00m"

