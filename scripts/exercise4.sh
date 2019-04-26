
# echo "Ejercicio 4"
# ./exercise4.sh aa

# Se obtienen los argumentos
ARG1=$1


		#bucle que recorre la carpeta especificada y que sean jpg

		for i in $ARG1/*.jpg; 
		do 
				#recogemos el tamaño de cada archivo `jpg
				tamanio1=`du $i | awk '{print $1}'`

				#si el tamaño es mayor o igual a 1024 (1mb) se redimensiona
				if [ $tamanio1 -ge "1024" ]
				   then
				    mogrify -resize 720 $i 
					echo $i
				fi

		done

