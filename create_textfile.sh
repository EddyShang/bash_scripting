#!/bin/bash
# creating some text in a text file
echo "Some text file" > text_file.txt
echo "adding some more content to the existing file" >> text_file.txt
echo "adding a thrid line to the file" >> text_file.txt

i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < text_file.txt
