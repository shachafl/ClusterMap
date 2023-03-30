#!/bin/bash

### This script sets the packages needed to run ClusterMap pipeline using python3.8 venv

### in your project folder run the command below. venv will create a virtual Python installation in the env folder.
python3 -m venv ClusterMap_env

### Activating a virtual environment will put the virtual environment-specific python and pip executables into your shell’s PATH.
source ClusterMap_env/bin/activate
 
### Make sure pip, setuptools and wheel are up to date as we need them for 
python3 -m pip install --upgrade pip setuptools wheel

### install all dependencies with specific versions for reproducibility
### Currently we need to keep numpy==1.23.5 (to avoid conflict with numba==0.56.4 (should be fixed in the next numba version))
### and matplotlib==3.6.3 to avoid conflicts with other packages 
python3 -m pip install -r venv_requirements.txt

### For the ClusterMap package, From the project / repo main directory execute:
### When installing a project with an -e flag (e.g. pip install -e mynumpy) and using it in code (e.g. from mynumpy import some_function), 
### making any change to some_function, allows using the updated function without reinstalling it.
pip install -e .
