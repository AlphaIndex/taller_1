#!/bin/bash

git add .

lineas_modificadas=$(git diff --numstat | awk  '{ total += $1 + $2 } END{print total}')

#if echo $lineas_modificadas | grep -q ^[0-9]\+$; then
#   if [$lineas_modificadas -gt 0] 2>/dev/null; then
     git commit -m "Se han modificado $lineas_modificadas lineas"
     git push
     echo "Cantidad de lineas modificadas: $lineas_modificadas" > README.md
     git add README.md
     git commit -m "Actualizacion de README.md con la cantidad de lineas modificadas" 
     git push
#   else
#    echo "No se han realizado cambios. No se han realizado commits."
#   fi
#else
#    echo "Hubo un problema al obtener la cantidad de lineas modificadas"
#fi
