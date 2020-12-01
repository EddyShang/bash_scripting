#!/bin/bash
# this is the first test of bash scripting used to create a new folder under the home directory and 
# and several files within it

mkdir ~/Test_Bash_Script
touch ~/Test_Bash_Script/{Read_only,Writable}_{1..5}
chmod 200 ~/Test_Bash_Script/Read_only*
mv ~/bash_scripting_test.txt ~/Test_Bash_Script/
tree ~/Test_Bash_Script/

