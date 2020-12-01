#!/bin/bash
# array exericse

a=()
b=("apple" "banana" "cherry")
echo ${b[@]}
echo ${b[1]}
b[5]="kiwi"
echo ${b[@]}
b+=("mango")
echo ${b[4]}
echo ${b[@]}
echo ${b[@]: -1}

declare -A myarray
myarray[color]=Blue
myarray["office building"]="HQ South"
echo ${myarray["office building"]} is ${myarray[color]}
