#~/bin/bash
# case statement example
echo "Enter your favourite type of pets"
read pet

case $pet in 
	dog|puppy) echo "you love Canine";;
	cat) echo "you love Feline";;
	*) echo "NO MATCH!";;
esac
