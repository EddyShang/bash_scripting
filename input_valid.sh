#!/bin/bash
# input validation examples

#1st example
if [ $# -lt 3 ]; then
	cat <<- EoM
		This command require three arguments:
		Username, User ID, and favorite sport.
	EoM
else
	echo "Username is $1"
	echo "User ID is $2"
	echo "Favorite sport is $3"
fi

#2nd example
read -p "What is your favorite sport? [hockey]" sport
	while [[ -z "$sport" ]]; do
		sport="hockey"
	done
echo "Favorite sport is $sport"

#3rd example
read -p "What year did you born in? [YYYY]" year
	while [[ ! $year =~ [0-9]{4} ]]; do
		read -p "Enter a four digit year please!" year
done
echo "You were born in $year, nice!"
