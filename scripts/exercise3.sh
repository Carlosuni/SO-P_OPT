#!/bin/sh
#set -x

# echo "Ejercicio 3"
# ./exercise3.sh 2 40

# Se obtienen los argumentos
ARG1=$1
ARG2=$2
factores=0

for i in `seq $ARG1 $ARG2`;
 do
   factores=$(factor $i |  cut -d ':' -f 2 | tr [:alnum:] [\\n\*] | grep " " | uniq -c)

   if [ $factores -eq "1" ]
   then
    echo $i
   fi
done 
