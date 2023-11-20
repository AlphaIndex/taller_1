#!/bin/bash

lineas_modificadas=$(git diff --stat | grep "changed" | awk '{total+=$1} END{print total}')

if [ $lineas_modificadas -gt 0 ]; then
git commit -m "Se han modificado $lineas_modificadas lineas"
