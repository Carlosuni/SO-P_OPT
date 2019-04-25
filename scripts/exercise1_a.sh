#!/bin/sh
#set -x

# echo "Ejercicio 1a"
# ./exercise1_a.sh root nobody foo dbus

# Se obtienen los argumentos y se muestran las lineas para cada coincidencia
for ARG in "$@"
do
  # Busqueda del argumento como patron y corte de la linea con los campos solicitados
  grep $ARG /etc/passwd | cut -d ':' -f 1,7
done
