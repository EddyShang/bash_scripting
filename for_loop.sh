#!/bin/bash
# examples of for loop
# 1st example
for i in 1 2 3
do
	echo i=$i
done

# 2nd example
for i in {1..20}
do
	echo i=$i
done

# 3rd example
for (( i=1; i<=30; i++ ))
do
	echo i=$i
done

# 4th example
count=1
my_array=("apple" "banana" "cherry" "durain" "mango")
for i in ${my_array[@]}
do
	echo ${count}: $i
	((count += 1))
done

# 5th example
declare -A my_arr
my_arr["name"]="Eddy"
my_arr["id"]="0024"
my_arr["gender"]="male"
for i in ${!my_arr[@]}
do
	echo "$i: ${my_arr[$i]}"
done
