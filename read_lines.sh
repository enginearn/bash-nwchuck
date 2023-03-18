#!/bin/bash

# Get txt file and save it as named hamlet
FILE="hamlet"
if [ ! -e $FILE ]; then
    curl https://www.gutenberg.org/cache/epub/1524/pg1524.txt -o $FILE
fi

while read -r line; do
    echo "Line $x $line"
    (( x ++ ))
done < hamlet

if [ -e $FILE ]; then
    echo "$FILE exists!"
fi

echo "Do you want to remove $FILE file? [y/N]"
delete="no"
read delete
delete=${delete,,} # make text to lowercase

if [[ $delete =~ ^([y].{,3}) ]]; then
    echo "Your chosen: $delete"
    rm $FILE
    echo "the file deleted!"
else
    echo "$FILE exists!"
    exit 1
fi
