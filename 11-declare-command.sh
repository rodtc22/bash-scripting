#! /bin/bash

#para ver todas las variables que tengo
#aunque cuando lo usamos en script, no lo guarda el comando
#pero si lo ponemos directo en la terminal entonces si

# declare -p
declare -r myvariable2="ls *.txt"
echo ${myvariable2}
$myvariable2

: << 'comentario'
    ES COMO CONSTRUIR UN COMANDO

    si yo quisiera almacenar en una varible el comando: 
        apt list | grep "mysql"
    entonces declare me sirve para hacer eso y puedo usar ese nuevo comando
    como:
        $myvariable
    en caso de que le haya puesto el nombre myvariable
comentario