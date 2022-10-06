#!/bin/bash
# Copy all needed files

echo "Obteniendo librería auxiliar..."
mkdir -p helpers
curl -s -o helpers/helpers.py https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/helpers/helpers.py
echo "Proceso terminado 🍻..."

echo "Obteniendo datos..."
curl -s -o https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/winequality-red.csv
curl -s -o https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/winequality-white.csv