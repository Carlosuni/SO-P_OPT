#!/bin/sh
#set -x

# echo "Ejercicio 1b"
# ./exercise1_b.sh 1

# Se obtienen los argumentos y se muestran las lineas para cada coincidencia
for ARG in "$@"
do
  # Busqueda del argumento concatenado con : como patron y corte de la linea con los campos solicitados
  grep ":$ARG:" /etc/group | cut -d ':' -f 1
done
