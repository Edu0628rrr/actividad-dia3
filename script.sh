#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Error: debes poner 2 parametros"
    exit
fi

palabra=$1
ruta=$2

if [ ! -d "$ruta" ]
then
    echo "Error: la carpeta no existe"
    exit
fi

grep -ril "$palabra" "$ruta" | while read archivo
do
    cantidad=$(grep -o "$palabra" "$archivo" | wc -l)

    echo "Archivo: $archivo"
    echo "Veces: $cantidadecho "Archivo encontrado: $archivo"
echo "Frecuencia: $cantidad"
echo "--------------------""
done
