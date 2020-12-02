#!/bin/bash
# an example using flags

while getopts :u:p:a option
do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "${option} choose";;
		?) echo "$OPTARG is an invalid flag";;
	esac
done

echo "User: $user   Password: $pass"
