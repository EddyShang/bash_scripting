#!/bin/bash
# using time in bash script

today=$(date +"%d-%m-$Y")
time=$(date +"%H:%M:%S")
printf -v d "Current_User:\t%s\nDate:\t\t%s @ %s\n " $USER $today $time
echo "$d"
