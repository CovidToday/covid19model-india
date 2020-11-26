sbatch -N15 slurm_fitting_batch1.sh
sbatch -N15 slurm_fitting_batch2.sh
watch "squeue | grep collins"
