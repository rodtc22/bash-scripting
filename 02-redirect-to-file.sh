#! /bin/bash

echo "Este es un texto que se queda en terminal"

echo "Esto se dirige a un archivo" > archivo.txt
echo "Este texto borra al anterior" > archivo.txt

echo "-----------------------" >>archivo.txt
echo "Hola a todos" >> archivo.txt
echo "Como estan :D" >> archivo.txt

# >         borra lo anterior y escribe
# >>        escribe en la linea siguiente sin borrar lo anterior