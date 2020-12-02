#!/bin/bash
# read and select examples

#read example
echo "What is your name?"
read name
echo "What is your password?"
read -s pass
read -p "What is your favorite sport? " sport

echo name: $name password: $pass sport: $sport

#select example
echo "Please make a selection using number keys"
select option in "basketball" "soccer" "tennis" "chess" "quit"
do
	case $option in
		basketball) echo "You selected $option";;
		soccer) echo "You selected $option";;
		tennis) echo "YOu selected $option";;
		chess) echo "You selected $option";;
		quit) break;;
		*) echo "Please choose an option";;
	esac
done
