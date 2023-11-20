#!/bin/bash

lineas_modificadas="N/A"  # Valor predeterminado

if [ -n "$(git status -s)" ]; then
    git add .
    git commit -m "Commit automático: $(date +'%Y-%m-%d')"
    git push

    lineas_modificadas=$(git show --stat HEAD | awk '{print $1}')

    echo "Se han realizado cambios en el repositorio. Líneas modificadas: $lineas_modificadas" >> README.md
else
    echo "No se han realizado cambios en el repositorio esta semana."
fi
