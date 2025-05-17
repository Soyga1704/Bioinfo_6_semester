#!/bin/sh
  
#SBATCH --job-name=wgs_fastqc   # Job name
#SBATCH --cpus-per-task=40      # Run on a single CPU
#SBATCH --mem=256gb                     # Job memory request
#SBATCH --time=1:30:00          # Time limit hrs:min:sec
#SBATCH --output=/home/astrezhneva/hm_rna_seq/fastqc/fastqc_slurm.log  # Standard output and error log
#SBATCH --partition=short

cd ~/hm_rna_seq/fastqc/;
ls ~/hm_rna_seq/*.gz | parallel -j4 "fastqc -t 10 -o . {}"
