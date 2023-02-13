#!/bin/bash

while true
do
    read -p 'Please write your file location: ' file
    if [[ $FILE == '' ]]
    then
        echo "Please give a file"
    elif [[ ! -f $FILE ]]
    then
        echo "Please give an existing file"
    else
        break
done

# grep -i 0c127ab5cdf997cf4 event_history.csv | grep -i Terminate | egrep -o 'i-[[:xdigit:]]+' | sort | uniq >  ./result.txt

# grep -i privatIp event_history.csv | grep -i Terminate | egrep -o 'i-[[:xdigit:]]+' | sort | uniq >  ./result.txt

# grep -i privatIp event_history.csv | grep -i Terminate | grep -Eo 'i-.{17}' | sort | uniq >  ./result.txt

cat $FILE | grep serdar event_history.csv | grep -i Terminate | grep -Eo 'i-[a-zA-Z0-9]{17}' | sort | uniq >  /tmp/result.txt
echo "Your result is ready under the /tmp/result.txt file"