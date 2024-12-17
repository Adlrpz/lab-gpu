#!/bin/bash
#SBATCH --job-name=multiprocesing      # Nombre del trabajo
#SBATCH --ntasks=1                     # Número total de tareas
#SBATCH --cpus-per-task=4              # Número de CPUs por tarea (4 procesadores)
#SBATCH -p hpc-bio-nikola-cpu          # Cola a utilizar
#SBATCH --chdir=/home/alumno06/lab5    # Directorio de trabajo

# Cargar módulos 
module load anaconda/2023.03

# Ejecutar el programa usando IPython
ipython reduc-operation-array_par-alumno06.ipynb $1


# Descargar el módulo
module unload anaconda/2023.03
