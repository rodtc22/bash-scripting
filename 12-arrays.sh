#! /bin/bash

car=('rodrigo' 'brayan' 'vidal' 'omar')

# mostrar posiciones
echo ${car[0]} ${car[1]} ${car[2]}

# mostrar todo
echo ${car[@]}

# muestra las posiciones
echo ${!car[@]}

# tamanio del vector
echo ${#car[@]}

#eliminar una "posicion" del vector
echo ""
unset car[2]
for i in ${!car[@]}
do
    echo $i ": " ${car[$i]}
done

#cambiar el valor de una posicion
car[1]='hola'


#----------------------------------------------
#implementar la criba de eratostenes
N=50
isprime=( 
    $(
    for (( i = 0; i <= N ;i++))
    do 
        echo 1
    done
    ) 
)

isprime[0]=0
isprime[1]=0

for (( i = 2; i < N ;i++ ))
do
    if ((isprime[i] == 0))
    then
        continue
    fi

    for (( j = i+i ; j < N ; j += i ))
    do
        isprime[j]=0
    done
done

echo ""
for (( i = 2 ; i < N ;i++ ))
do
    if [ ${isprime[i]} -eq 1 ]
    then
        echo $i " es primo"
    fi
done

# -------------------------------------------------------------
# ordenar un numero

echo ""

echo "N: "
read tam

vec=( $(for((i = 0 ;i < tam ;i++)); do echo 0; done))

for ((i = 0 ;i < tam ;i++))
do
    read vec[i]
done

#burbuja
for ((i = 0 ; i < tam ;i++))
do
    for ((j = i+1 ;j < tam ;j++))
    do
        if [ ${vec[i]} -gt ${vec[j]} ]
            then
                aux=${vec[i]}
                vec[i]=${vec[j]}
                vec[j]=$aux
        fi
    done
done

echo "mostrar vector: "
echo ${#vec[@]}
echo ${vec[@]}
