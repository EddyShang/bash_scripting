#~/bin/bash
# an exercise of using if statement in bash script

echo "Please enter an integer:"
read int

if [[ $int =~ ^[0-9]+$ ]]
then
	echo "the integer entered is $int"
	if [ $int -gt 10 ]
	then
		echo "$int is greater than 10"
	else
		echo "$int is not greater than 10"
	fi
else
	echo "It is not an integer"
fi


