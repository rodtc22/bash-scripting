#! /bin/bash

# ---------------------------------------------------
echo "======ASCENDENTE======="
number=1
while [ $number -le 5 ]
do
    echo "number = $number"
    number=$((number + 1))
done

echo "======DESCENDENTE======="
number=5
while (($number >= 1))
do
    echo "number = $number"
    number=$((number - 1))
done

# ---------------------------------------------------
echo ""
for i in 1 2 3 4 5 #for(int i : [1,2,3,4,5])
do
    echo $i
done

echo ""
for i in {0..10..1} #i = 0 ; i <= 10 ;i=i+1
do
    echo $i
done

echo ""
for (( i = 0; i < 10 ;i+=2 ))
do
    echo $i
done


: << 'COMENTARIO'
    while: termina cuando la condicion se vuelve false
    until: termina cuando la condicion se vuelve true

    tambien existen el break, continue. como en c++
COMENTARIO