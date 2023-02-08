#!/bin/bash

########## Bu Komutu asagidaki formatta calistirabilirsiniz ###################
#./backup.sh /home/ec2-user/data /mnt/backup 

# Sudo yetkisi olup olmadigini kontrol et
if [[ ${UID} -ne 0 ]]
then
    echo "Lütfen root yetkisiyle calistirin. 'sudo' "
else

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
    $(mkdir  $2)
fi 

DosyaAdi="Backup-$(hostname -i)_$(date +%F-%H-%M).tgz"    
tar -czvf $DosyaAdi $1
mv $DosyaAdi $2