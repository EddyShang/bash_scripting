#!/bin/bash
#
#Write a simple guessing game, using interactive input and test conditions.
#Also, build the program so that it responds to a command line argument.
#and has a function if no argument was specified. Use a function as well.

randomNum=$RANDOM
secret=${randomNum:0:1}

function game {
	read -p "Guess a random one digit number!" int
	while [[ $int != $secret ]]; do
		read -p "Nope, try again!" int
	done
	echo "Great job! $int is the answer! You are truly great at this game!"
}

function generate {
	echo "A random number is: $randomNum"
	echo -e "Hint: type \033[1m$0 game\033[0m for a fun game"
}


if [[ $1 =~ game|GAME|Game ]]; then
	game
else
	generate
fi
