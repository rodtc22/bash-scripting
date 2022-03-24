#! /bin/bash

#las cadenas pueden tener espacios
echo "ingresa una cadena"
read cad1
echo "ingresa otra cadena"
read cad2


if [ "$cad1" == "$cad2" ]
then
    echo "son iguales"
else
    echo "son distintos"
fi


if [ "$cad1" \< "$cad2" ]
then
    echo "$cad1 es menor que $cad2"
elif [ "$cad1" \> "$cad2" ]
then
    echo "$cad1 es mayor que $cad2"
else
    echo "$cad1 es igual a $cad2"
fi


if [[ "$cad1" < "$cad2" ]] #con estos [[]] se permite usar los simbolos como en (())
then
    echo "$cad1 menor que $cad2"
elif [[ "$cad1" > "$cad2" ]]
then
    echo "$cad1 mayor que $cad2"
else
    echo "$cad1 igual que $cad2"
fi

#VERIFICAR SI UNA CADENA ESTA VACIA
if [ -z "$cad1" ]
then
    echo "cad1 es vacia"
fi

# VERIFICA SI UNA CADENA NO ESTA VACIA
if [ -n "$cad1" ]
then
    echo "cad1 no es vacia"
fi

# VERIFICA SI TIENE UN SUBSTRING
if [[ "$cad1" == *"hola"* ]]
then
    echo "si contiene el substring hola"
fi

# CONCATENAR DOS CADENAS
cad3=$cad1$cad2
echo $cad3

# MINUSCULAS A MAYUSCULAS   
echo ${cad1^}   #solo la primera letra
echo ${cad1^^}  #todo

# OBTENER CARACTERES o SUBSTRINGS
echo ${cad1:0:1} #variable:posicioninicio:tamanio
echo ${cad1:1:1} 
echo ${cad1:2:1}
echo ${cad1:3:1}


# cuando comparamos, no podemo $cad1 == $cad2 , ya que compara solo el primer caracter
# por eso se ponen entre comillas

