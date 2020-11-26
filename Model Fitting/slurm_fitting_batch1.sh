#!/bin/bash

#SBATCH --time=24:00:00
#SBATCH --job-name=covidfit
#SBATCH --partition=standard
#SBATCH -o ./slurm_output_stream/slurm-%a.out

srun -N1 run_fitting.sh '0.0' '0.05' '0.25' &
srun -N1 run_fitting.sh '0.2' '0.05' '0.25' &
srun -N1 run_fitting.sh '0.4' '0.05' '0.25' &
srun -N1 run_fitting.sh '0.6' '0.05' '0.25' &
srun -N1 run_fitting.sh '0.8' '0.05' '0.25' &
srun -N1 run_fitting.sh '0.0' '0.1' '0.25' &
srun -N1 run_fitting.sh '0.2' '0.1' '0.25' &
srun -N1 run_fitting.sh '0.4' '0.1' '0.25' &
srun -N1 run_fitting.sh '0.6' '0.1' '0.25' &
srun -N1 run_fitting.sh '0.8' '0.1' '0.25' &
srun -N1 run_fitting.sh '0.0' '0.2' '0.25' &
srun -N1 run_fitting.sh '0.2' '0.2' '0.25' &
srun -N1 run_fitting.sh '0.4' '0.2' '0.25' &
srun -N1 run_fitting.sh '0.6' '0.2' '0.25' &
srun -N1 run_fitting.sh '0.8' '0.2' '0.25' &
wait
