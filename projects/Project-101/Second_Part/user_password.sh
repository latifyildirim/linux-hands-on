#!/usr/bin/env bash

read -p "Kullanic adi :" username
read -p "Parola :" password
# read -p "Aciklama :" comment 
adduser $username
passwd $username << EOD
$password
$password
EOD

chage -d 0 $username
#passwd -e $username
echo -e "Kullanici adi: $username\nParola: $password" 