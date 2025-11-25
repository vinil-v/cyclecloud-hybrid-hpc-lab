#!/bin/bash
#SBATCH --job-name=my_job            # Job name
#SBATCH --output=output_%j.txt       # Standard output (%j = job ID)
#SBATCH --error=error_%j.txt         # Standard error
#SBATCH --partition=onprem         # Partition/queue name
#SBATCH --nodes=1                    # Number of nodes

echo "Job started on $(date)"

# Load modules if needed
 module load mpi/impi-2021

# Run your application
mpirun -np 2 IMB-MPI1 PingPong

echo "Job finished on $(date)"