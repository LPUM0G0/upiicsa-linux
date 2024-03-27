#!/bin/bash

# Leer cada línea del archivo y crear un archivo con ese nombre en la carpeta ./Curso
while IFS= read -r line || [[ -n "$line" ]]; do
    # Eliminar espacios en blanco al principio y al final del nombre del archivo
    filename=$(echo "$line" | tr -d '[:space:]')
    touch "./Curso/$filename"
done < nombres.txt

echo "Archivos creados en ./Curso"
