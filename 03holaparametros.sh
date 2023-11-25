#! /bin/bash
echo "número de parametros = $#"

# If # of params is less than or equal to 0
if test $# -le 0; then
	echo "Hay que introducir al menos un parámetro."
	exit 1
fi

echo "Hola $@!"
