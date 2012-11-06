#! /bin/bash

var=${1:?"Se necesita un grupo"}


var=$(egrep '^$var' /etc/group)
if [[ $var ]]; then
    echo -e "El grupo existe: $1 \n :P"
else
   echo -e  "El grupo no existe: $1 \n X_X"
fi
