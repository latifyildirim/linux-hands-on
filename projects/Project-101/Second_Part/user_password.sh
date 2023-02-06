#!/bin/bash

read -p "Kullanic adi :" username
read -p "Parola" password
read -p "Aciklama :" comment 

useradd -c "$comment" -m $username
cat "$username:$password" >> passwd

chage -d 0 $username
echo -e "Kullanici adi: $username\nParola: $password"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    