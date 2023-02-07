#!/usr/bin/env bash

read -p "Kullanic adi :" username
read -p "Parola :" password
# read -p "Aciklama :" comment 

passwd ${username} << EOD
${password}
${password}
EOD

chage -d 0 $username
echo -e "Kullanici adi: $username\nParola: $password" 