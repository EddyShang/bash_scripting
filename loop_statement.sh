#!/bin/bash
# example of while loop and until loop

i=0
while [ $i -lt 10 ]; do
	echo i=$i
	((i+=1))
done
echo "total loops = $(($i+1-1))"

j=0
until [ $j -gt 10 ]; do
	echo j=$j
	((j+=1))
done

echo "total loops = $j"
