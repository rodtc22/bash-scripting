#! /bin/bash

n1=20
n2=3

echo "suma: "$((n1 + n2))
echo "resta: "$((n1 - n2))
echo "multipliacion: "$((n1 * n2))
echo "division: "$((n1 / n2))  #solo parte entera
echo "modulo: "$((n1 % n2))

echo ""
#USANDO EL COMANDO "EXPRESION"
echo "suma: "           $(expr $n1 + $n2 )
echo "resta: "          $(expr $n1 - $n2)
echo "multipliacion: "  $(expr $n1 \* $n2)
echo "division: "       $(expr $n1 / $n2)   #solo parte entera
echo "modulo: "         $(expr $n1 % $n2)
