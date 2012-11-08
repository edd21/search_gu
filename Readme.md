#Busca un usuario o grupo 

## Motivacion 

Hacer un comando que me permita verificar si un usuario o grupo existe dentro del sistema

## Referencia


```sh
search_gu.sh <opcion> (nombre_usuario)
```

*nombre_usuario - Elemento a buscar segun sea la opcion, si no existe manda el mensaje 
				  pertinente
				  
*opcion - Es la opcion de busqueda con dos valores:
	* -u - busca usuario en archivo /etc/passwd 
	* -g - busca grupo  en archivo /etc/groups
	

