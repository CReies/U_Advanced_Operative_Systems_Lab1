#! /bin/bash

# Help function
function help() {

echo "
SYNOPSIS
	$0 NOMBRE_USUARIO

DESCRIPCION
	Devuelve:
		SI si NOMBRE_USUARIO coincide con algún usuario conectado o
		NO si NOMBRE_USUARIO no coincide con ningún usuario conectado

CÓDIGOS DE RETORNO
	1 Si el número de parámetros es distinto de 1"

}

# If # of params is not equal to 1
if test $# -ne 1; then
	echo "El número de parámetros debe ser 1."
	help
	exit 1
fi

isConnected=`who | grep $1`

if [ -z "$isConnected" ]; then
	echo "NO"
else
	echo "SI"
fi
