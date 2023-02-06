#!/bin/bash

read -n username
read password
read comment 

useradd -c "$comment" -m $username
echo "$username:$password" | chpasswd

chage -d 0 $username
echo -e "Kullanici adi: $username\nParola: $password"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    