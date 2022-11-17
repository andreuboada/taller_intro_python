#!/bin/bash
# Copy all needed files

echo "Obteniendo librería auxiliar..."
mkdir -p helpers
curl -s -o helpers/helpers.py https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/helpers/helpers.py


echo "Obteniendo datos..."
mkdir -p data
curl -s -o data/winequality-red.csv https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/winequality-red.csv
curl -s -o data/winequality-white.csv https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/winequality-white.csv
curl -s -o data/president_heights.csv https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/president_heights.csv
curl -s -o data/Seattle2014.csv https://raw.githubusercontent.com/andreuboada/taller_intro_python/main/data/Seattle2014.csv

echo "Proceso terminado 🍻..."