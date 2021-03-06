#!/bin/bash
#
#SBATCH --comment=r-test
#SBATCH --ntasks=1
#SBATCH --job-name=SVMmodel
#SBATCH --output=output.%j.r-test
#SBATCH --time=2:00:00
#SBATCH --mem=20G

#### SLURM 4 processor R test to run for 1 hour.

module purge
module add apps/python/3.5.1

python random_forest_cv.py
