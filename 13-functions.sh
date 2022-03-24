#! /bin/bash

function procName()
{
    echo "este es un procedimiento"
}

procName

#podemos pasarle argumentos igual que en el tema 06
function funcName()
{
    echo "argumento:" $1
}

funcName rodrigo hola como estan todos!


#podemos pasarle varios argumentos 
function variosArg()
{
    ar=("$@")
    echo "argumentos:" ${ar[@]}
}

variosArg rodrigo hola como estan todos!

# modificar el contenido de variables en una funcion
function cambiar()
{
    x="adios"
}

x="hola"
cambiar
echo $x


#-------------------------------------------------------------------------------------
# verificar si un numero es primo
function esPrimo()
{
    divi=0
    for ((i = 1 ;i <= x;i++))
    do
        if [ $((x%i)) -eq 0 ]
        then
            divi=$((divi + 1))
        fi 
    done
    if [ $divi -eq 2 ]
    then
        echo "$x es Primo"
    fi
}

for x in {1..50}
do
    esPrimo
done

#----------------------------crear el counting sort----------------------------
function crearVector()
{
    counting=($( for ((i=0 ;i<tam;i++)); do echo 0; done ))    
}
function mostrarVector()
{
    echo "MOSTRANDO: "
    echo $@
}
function leerVector()
{
    echo "intro tam:"
    read tam2
    vec=( $( for ((i =0 ; i < tam2 ;i++)); do echo 0; done ) )

    i=0
    while [ $i -lt $tam2 ]
    do
        read vec[$i]
        i=$((i + 1))
    done
}
function ordenarCounting()
{
    for x in ${vec[@]}
    do
        counting[$x]=$((counting[x] + 1))
    done
}
function mostrarCountingSort() # solo muestra los valores ordenados
{
    echo "MOSTRANDO LA ORDENACION"
    for i in ${!counting[@]}
    do
        while ((counting[i] > 0))
        do
            echo $i
            counting[$i]=$((counting[i] - 1))
        done
    done
}

function segundaOpcion() #devuelve un vector con los valores ordenados
{
    ordenado=($(
        for i in ${!counting[@]}
            do
                while ((counting[i] > 0))
                do
                    echo $i
                    counting[$i]=$((counting[i] - 1))
                done
            done
    ))
}

echo ""
tam=50
crearVector
mostrarVector "${counting[@]}"
leerVector
mostrarVector "${vec[@]}"
ordenarCounting
#1ra opcion
# mostrarCountingSort

#2da opcion
segundaOpcion
mostrarVector "${ordenado[@]}"