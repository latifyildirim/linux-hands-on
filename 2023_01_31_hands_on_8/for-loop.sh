#!/bin/bash

echo "Numbers: "

for i in {1..10}
do
    echo $i
done

for name in ahmet mehmet cemal kemal orhan
do  
    echo $name
done

echo "Files in current folder:"

for file in `pwd`/*
do
   echo $file
done