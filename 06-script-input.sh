#! /bin/bash

# RECIBIMOS LOS UNICOS 3 ARGUMENTOS POR CONSOLA RECIBIDO 
echo $1 $2 $3 $1

# RECIBIMOS TODO LOS ARGUMENTOS POR CONSOLA QUE QUERRAMOS EN UN ARRAY
args=("$@")

# IMPRIMIR ALGUNOS DE LAS POSICIONES DEL ARRAY DE ARGUMENTOS 
echo ${args[0]} ${args[2]}

# MOTRAR TODO
echo $@

# MOSTRAR EL TAMANIO DEL ARRAY
echo $#

# LECTURA DE VARIAS LINEAS DESDE TECLADO
while read line
do
    echo "linea introducida: " $line
done

# LECTURA DE VARIAS LINEAS DESDE ARCHIVOS
while read line
do
    echo "linea leida: ".$line #concatenacion como en PHP
done < archivo.txt

#LECTURA DE VARIAS LINEAS DESDE ARCHIVOS (con el nombre del archivo como argumento)
while read line
do
    echo "lina leida "$line
done < $1

: << 'COMENTARIO'
    Para cuando recibo un numero definido de argumentos, ej: 3 argumentos
    ./archivo.sh a b c

        a,b,c son conocidos como argumentos que seran recibidos por el programa

    Para cuando recibo un numero indefinido de argumentos
    ./archivo.sh hola como estas, un gusto ...

        esos argumentos son recibidos por el programa en un array
COMENTARIO

# EJEMPLO SUMAR TODOS LOS ARGUMENTOS RECIBIDOS DESDE LA CONSOLA
# como dice por consola, entonces debe ser
# ./archivo arg1 arg2 arg3 ...

argumentos=("$@")

n=$#
i=0
suma=0
while [ $i -lt $n ]
do
    suma=$((suma + ${argumentos[$i]}))
    i=$((i + 1))
done
echo "Suma total: "$suma