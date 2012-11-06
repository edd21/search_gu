#! /bin/bash



var=$(egrep '^$1' /etc/group)
if [[ $var ]]; then
    echo "El grupo existe: "$1
else
   echo "El grupo no existe: "$1
fi
