#!/bin/bash

var1='global 1'
var2='global 2'

var_scope () {
  local var1='function 1'
  var2='function 2'
  echo -e "fonksiyonun ici:\nvar1: $var1\nvar2: $var2"
}

echo -e "ilk cagirdigimiz fonksiyon:\nvar1: $var1\nvar2: $var2"

var_scope

echo -e "son cagirdigimiz fonksion:\nvar1: $var1\nvar2: $var2"
