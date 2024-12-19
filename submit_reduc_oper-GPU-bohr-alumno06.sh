#!/bin/bash
#SBATCH --partition=bohr-gpu
#SBATCH --chdir=/home/alumno06/lab5   # Directorio de trabajo
#SBATCH -J gpu-notebook               # Nombre del trabajo
#SBATCH --nodes=1
#SBATCH --ntasks=1

# Carga del modulo
module load anaconda/2023.03
module load cuda

# Ejecutar con interprete ipython
ipython ./reduc-operation-array_gpu-alumno06.ipynb $1 
#Descarga del modulo
module unload anaconda/2023.03
module unload cuda
