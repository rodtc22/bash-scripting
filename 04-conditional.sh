#! /bin/bash

#PRIMERA FORMA DE IF
variable=10
if [ $variable -eq 10 ]
then
    echo "la condicion se cumple"
else
    echo "la condicion NO se cumple"
fi

#SEGUNDA FORMA DE IF
variable=5
limite=4
if (( $variable == $limite ))
then
    echo "Resultado: $variable == $limite"
elif (( $variable < $limite ))
then
    echo "Resultado: $variable < $limite"
else
    echo "Resultado: $variable > $limite"
fi

#======================EJERCICIO======================
#dado una edad, verifica si estn entre los 18 y 40 anios
edad=23
if (( 18 <= $edad && $edad <= 40 ))
then
    echo "Si pertenece al rango de edad"
else
    echo "No pertenece al rango de edad"
fi

edad=56
if [ $edad -ge 18  -a  $edad -le 40 ]
then
    echo "Si pertenece al rango de edad"
else
    echo "No pertenece al rango de edad"
fi

edad=40
if [ $edad -ge 18 ] && [ $edad -le 40 ] #agregar esos espacios antes/despues [ ] es muy importante
then
    echo "Si pertenece al rango de edad"
else
    echo "No pertenece al rango de edad"
fi


: << 'comentario'
    No hay que poner espacios en la asignacion

    eq: ==
    ne: !=
    lt: <
    le: <=
    ge: >=
    gt: >

    a: &&
    o: ||
comentario