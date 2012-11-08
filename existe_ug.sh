 #File_name:existe_ug.sh
 #
 # Copyright 2012 edd <edd@eddbook>
 # 
 # This program is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation; either version 2 of the License, or
 # (at your option) any later version.
 # 
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 # 
 # You should have received a copy of the GNU General Public License
 # along with this program; if not, write to the Free Software
 # Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 # MA 02110-1301, USA.

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
