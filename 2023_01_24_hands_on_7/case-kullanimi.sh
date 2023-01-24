#!/bin/bash

read -p "numara gir: "  ilk_numara
read -p "numara gir: "  ikinci_numara
read -p "opsiyon sec:
t - toplama
c - cikarma
x - carpma
b - bolme
" operation

case $operation in

[Tt])
    echo "Result" = $(( ilk_numara + ikinci_numara ))
;;
"c")
    echo "Result" = $(( ilk_numara - ikinci_numara ))
;;
"x")
    echo "Result" = $(( ilk_numara * ikinci_numara ))
;;
"B" | "b")
    echo "Result" = $(( ilk_numara / ikinci_numara ))
;;
*)
    echo Hatali kullanim
;;
esac