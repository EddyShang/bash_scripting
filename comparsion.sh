#!/bin/bash
# comparsion oprators exercise

[[ "dogs" = "dogs" ]]
echo $?
[[ "dogs" = "cats" ]]
echo $?
[[ 20 > 100 ]]
echo $? #this is going to return 0 as it is ture since the intepreter takes 20 and 100 as string
[[ 20 -gt 100 ]]
echo $?

a=""
b="b"
[[ -z $a && -n $b ]]
echo $? #a is null and b is not null, if a is null AND b is not null should return true

