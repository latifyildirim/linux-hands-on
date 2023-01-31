#!/bin/bash

number=1

until [[ $number -ge 10 ]]

do 

	if (($number%2 == 0 ))
	then
	  echo "$number is even"
	
	else 
	  echo "$number is add"
	
	
      fi
	((number++)) 
      
done