#! /bin/bash

# Help function
function help() {

echo "
SYNOPSIS
	$0 NOMBRE_1 [NOMBRE_2] ... [NOMBRE_N]

DESCRIPCION
	Muestra \"Hola NOMBRE_1, NOMBRE_2, ... NOMBRE_N!\" por pantalla)

CÓDIGOS DE RETORNO
	1 Si el número de parámetros es menor que 1"

}

# If # of params is less than or equal to 0
if test $# -le 0; then
	echo "Hay que introducir al menos un parámetro."
	help
	exit 1
fi

message="Hola"
isFirst=true

# While there are params
while [ -n "$1" ]; do

	# If is the first iteration doesnt add comma [,]
	if $isFirst; then
		message="$message $1"
		isFirst=false
	else
		message="$message, $1"
	fi

	shift
done

echo $message"!"
