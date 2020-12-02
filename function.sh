#!/bin/bash
# function example

function hello {
	 echo "Hello $1, have a nice $2!"
}

hello Eddy day
hello Everybody morning

function listthings {
	i=1
	for f in $@
	do
		echo $i:$f
		((i+=1))
	done
}
listthings $(ls)
