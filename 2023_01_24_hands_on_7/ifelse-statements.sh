#!/bin/bash

read -p "Enter a number:  "  number

if [[ $number -ge 10 ]]
then
    echo "Number is bigger than or equalto 10"
else
    echo "The number is smaller than 10"
fi