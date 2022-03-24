#! /bin/bash

#solo se escribe en stdout por que el comando esta bien
ls -a 1>stdout.txt 2>stderr.txt

#solo se escribe en stderr por que hubo algun error
ls +a 1>stdout.txt 2>stderr.txt

#si queremos que esa "salida" se vaya solo a un archivo y no a dos
ls -a &> salida.txt
ls -a &> salida.txt

: << 'comentario'
    Existen 2 tipos de salida
        STDOUT: es la salida cuando todo esta bien
        STDERR: es la salid cuando algo salio mal (en el comando o script)
comentario