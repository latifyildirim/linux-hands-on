#!/bin/bash

read -p "Kullanic adi :" username
read -p "Parola :" password
# read -p "Aciklama :" comment 

useradd -c "$comment" -m $username
t="$username:$password:1007:1007:/home/$username:/bin/bash"
echo "$t" > a.txt
sudo newusers a.txt
sleep 1
rm a.txt

chage -d 0 $username
echo -e "Kullanici adi: $username\nParola: $password" 