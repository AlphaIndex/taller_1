#!/bin/bash

lineas_modificadas="N/A"  # Valor predeterminado

if [ -n "$(git status -s)" ]; then
    git add .
    git commit -m "Guardado Semanal: $date"
    git push

    lineas_modificadas=$(git diff --shortstat HEAD | awk '{print $1}')

    echo "Se han realizado cambios en el repositorio. Líneas modificadas: $lineas_modificadas" >> readme.md
else
    echo "No se han realizado cambios en el repositorio esta semana." >> readme.md
fi
