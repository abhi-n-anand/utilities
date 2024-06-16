#!/usr/bin/env bash

echo "
Validating virtualenv configuration...
" 

if [ -d "env" ]; then 
    echo "
[OK] Env directory identified."
else 
    echo "---
[FAIL] Env directory not present. Configuring." 
    echo "Creating virtual environment in ${PWD}/env" 
    python3 -m venv env 
fi 


source env/bin/activate

echo "Installing requirements..." 
python3 -m pip install -r requirements.txt

echo "
[OK] Virtualenv activated. Requisite packages installed."


echo "
Starting jupyter notebooks..."
python3 -m jupyterlab
