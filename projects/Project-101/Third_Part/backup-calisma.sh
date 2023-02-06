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
# data=$1
# etc=$2
# boot=$3
# usr=$4
backup=$5
dosyaadi="Backup-$(hostname -i)_$(date +%F-%H-%M).tgz"
#dosyaadi="$(sed 's/ /-/g' [$dosyaadi])" 
#echo aa > "$dosyaadi"

declare -a topla
# for i in $data $etc $boot $usr
for i in $1 $2 $3 $4 
do
    topla+=($i)
done

# echo ${topla[@]}
# sudo tar -czvf $dosyaadi ${topla[@]}
sudo tar -czf $dosyaadi ${topla[@]}
sudo mv $dosyaadi $5