#!/bin/bash
# string exercise

a="Hello"
b="World"
c=$a$b
echo $a
echo $b
echo $c
echo ${#a}
echo ${#c}
d=${c:3}
echo $d
e=${c:3:4}
echo $e
echo ${c: -4}
echo ${c: -4:3}
fruit="apple banana banana cherry"
echo ${fruit/banana/pineapple}
echo ${fruit//banana/pineapple}
echo ${fruit/%cherry/pineapple}
echo ${fruit/#apple/pineapple}
echo ${fruit/c*/pineapple}
