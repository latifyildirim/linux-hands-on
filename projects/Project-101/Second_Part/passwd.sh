#!/bin/bash

read -p "Kullanic adi :" username
read -p "Parola" password  

adduser $username
echo "$password" | passwd --stdin $username

chage -d 0 $username
# passwd -e ${username}
echo -e "Kullanici adi: $username\nParola: $password"  