#! /bin/bash

# verifica si ese directorio existe
echo "Ingresa el directorio: "
read direct 

if [ -d "$direct" ] 
then
    echo "$direct exite"
else
    echo "El directorio $direct, no exite"
fi


# crear un archivo
echo "Ingresa el nombre del archivo para crearlo"
read filename

touch $filename


# verifica si ese archivo existe
echo "Ingresa el nombre del archivo"
read filename

if [ -f "$filename" ]
then
    echo "Si existe $filename"
else
    echo "No existe $filename"
fi 


# agregar texto a un archivo
echo "ingrea el nombre del archivo al que quieres agregar texto:"
read filename

if [ -f "$filename" ]
then
    echo "Ingresa el texto para agregar:"
    read texto
    echo "$texto" >> $filename
else
    echo "El archivo no exite!!!"
fi


# agregar un mismo texto a varios archivos
for i in {15..22}
do 
    echo "#! /bin/bash" > "$i"*.sh
done 

