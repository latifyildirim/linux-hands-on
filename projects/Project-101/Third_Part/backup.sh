#!/bin/bash

############# crontab -e ile calisitirilacak #########################
#5 * * * * /home/ec2-user/backup.sh /home/ec2-user/data /mnt/backup

########## Bu Komutu asagidaki formatta calistirabilirsiniz ###################
#./backup.sh /home/ec2-user/data /mnt/backup 

if [[ $# -ne 2 ]]
then
    echo "parametre eksik"
    exit
fi

if [[ ! -d $1 ]] 
then
    echo "dosyalar sistemde bulunamiyor"
    exit
fi

if [[ ! -d $2 ]]
then
    $(sudo mkdir  $2)
fi 

DosyaAdi="Backup-$(hostname -i)_$(date +%F-%H-%M).tgz"    
sudo tar -czvf $DosyaAdi $1
sudo mv $DosyaAdi $2