#!/bin/sh
#set -x

# echo "Ejercicio 2a"
# ./exercise2_b.sh ./input/ejercicio2a test.txt


if [ $# -ne 2 ]
then
    echo "Usage: ./exercise2 b.sh FILE NUM"
else
  tr -c [:alnum:] [\\n\*] < $1 | sort | uniq -c | sort -nr | head -$2
fi
