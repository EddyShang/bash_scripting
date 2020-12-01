#!/bin/bash
# this is an exercise getting system info and then reformating it in a neat way
disk_free_space=$(df -h / | grep -E "\/$" | awk '{print $4}')
greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"
logdate=$(date +"%Y-%m-%d")
logfile="$logdate"_report.log

echo -e $bold"Quick System Report For "$greentext"$HOSTNAME"$normal
printf "\tSYSTEM TYPE\t%s\n" $MACHTYPE 
printf "\tBASH VERSION\t%s\n" $BASH_VERSION
printf "\tFREE SPACE\t%s\n" $disk_free_space 
printf "\tFILES IN DIR\t%s\n" $(ls | wc -l) 
printf "\tGENERATED ON\t%s\n" $(date +"%H:%M:%S") 
echo -e $greentext"A copy of this file has been saved to $logfile"$normal

cat <<- EoM > $logfile
	This report was automatically generated by bash scripting.
	It contains some brief infomation about the system.
	-------------------------------------------------------------
	
EoM

printf "SYSTEM TYPE\t%s\n" $MACHTYPE >> $logfile
printf "BASH VERSION\t%s\n" $BASH_VERSION >> $logfile
printf "FREE SPACE\t%s\n" $disk_free_space >> $logfile
printf "FILES IN DIR\t%s\n" $(ls | wc -l) >> $logfile
printf "GENERATED ON\t%s\n" $(date +"%H:%M:%S") >> $logfile
