#!/bin/bash

if [[ $# -ne 5 ]]
then
    echo "parametre eksik"
    exit
fi

if [[ ! -d $1 ]] | [[ ! -d $2 ]] | [[ ! -d $3 ]] | [[ ! -d $4 ]] 
then
    echo "dosyalar sistemde bulunamiyor"
    exit
fi

if [[ ! -d $5 ]]
then
    $(sudo mkdir  $5)
fi

#./backup.sh /home/ec2-user/data /etc /boot /usr /mnt/backup 
hedef=$5
DosyaAdi="Backup-$(hostname -i)_$(date +%F-%H-%M).tgz" 

declare -a topla

for i in $1 $2 $3 $4 
do
    topla+=($i)
done 

sudo tar -czf $DosyaAdi ${topla[@]}
sudo mv $DosyaAdi $hedef