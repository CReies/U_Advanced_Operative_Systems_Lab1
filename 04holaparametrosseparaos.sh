#! /bin/bash
printf "número de parametros = $#\n\n"

# If # of params is less than or equal to 0
if test $# -le 0; then
	echo "Hay que introducir al menos un parámetro."
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
