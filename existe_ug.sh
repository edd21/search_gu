#! /bin/bash

var=${1:?"Se necesita un grupo"}

busqueda=${2:-"Usuario"}

if [[ $busqueda == "Usuario" ]]; then
    archivo="/etc/passwd"
else
	archivo="/etc/group"
fi

var=$(egrep '^$var' ${archivo})
if [[ $var ]]; then
    echo -e "Existe el $busqueda: $1 \n :P"
else
   echo -e  "No existe el $busqueda: $1 \n X_X"
fi
