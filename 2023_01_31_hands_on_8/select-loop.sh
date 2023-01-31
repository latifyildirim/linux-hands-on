#!/bin/bash

read -p "Ilk sayi: " ilk_sayi
read -p "Ikinci sayi: " ikinci_sayi

PS3="Islemi seciniz: "

select operation in toplama cikarma carpma bolme acil_cikis
do
  case $operation in
    toplama) 
      echo "result= $(( $ilk_sayi + $ikinci_sayi))"
    ;;
    cikarma)
       echo "result= $(( $ilk_sayi - $ikinci_sayi))"
    ;;
    carpma)
       echo "result= $(( $ilk_sayi * $ikinci_sayi))" 
       ;;
    bolme)
       echo "result= $(( $ilk_sayi / $ikinci_sayi))"
    ;;
    acil_cikis)
       break
    ;;   
    *)
       echo "Hatali karakter..." 
    ;;
  esac
done