#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p exacloud
#SBATCH --time=24:00:00
#SBATCH --mem 64GB
#SBATCH --cpus-per-task 8
#SBATCH --job-name=run_kallisto
#SBATCH --mail-type=ALL
#SBATCH --gres disk:335
#SBATCH -o /home/exacloud/lustre1/HeiserLab/patterja/tatlow_SMMART/logs/%j.kallisto.%N.out
#SBATCH -e /home/exacloud/lustre1/HeiserLab/patterja/tatlow_SMMART/logs/%j.kallisto.%N.err

bash /home/exacloud/lustre1/HeiserLab/patterja/tatlow_SMMART/scripts/run_kallisto.sh /home/exacloud/lustre1/HeiserLab/patterja/tatlow_SMMART $1
