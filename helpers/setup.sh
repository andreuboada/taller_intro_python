#!/bin/bash
# Copy all needed files

echo "Obteniendo librería auxiliar..."
mkdir -p helpers
curl -s -o helpers/helpers.py https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/helpers/helpers.py
echo "Proceso terminado 🍻..."