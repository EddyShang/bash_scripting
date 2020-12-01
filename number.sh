#!/bin/bash
# number manipulation and calculation exerices in bash

x=2
y=$((x+3))
echo $x
echo 'x should be 2'
echo $y
echo 'y should be 5'
echo $((x+2)) #4
echo '2+2 answer should be 4'
echo $((x-1)) #1
echo '2-1 answer should be 1'
echo $((x+y)) #7
echo '2+5 answer should be 7'
echo $((x*y)) #3
echo '2*5 answer should be 10'
((x++))
echo $x\ 'should be 3' 
((x*=2))
echo $x\ 'should be 6'
((x/=4))
echo $x\ 'should be 1'
