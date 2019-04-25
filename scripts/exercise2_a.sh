#!/bin/sh
#set -x

# echo "Ejercicio 2a"
# ./exercise2_a.sh ./input/ejercicio2a test.txt 2

tr -c [:alnum:] [\\n\*] < $1 | sort | uniq -c | sort -nr | head -$2
#tr -c [:alnum:] [\\n\*] < $1 | sort | uniq -c | sort -nr