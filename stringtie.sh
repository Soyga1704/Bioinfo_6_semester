#!/bin/bash
#SBATCH --job-name=stringtie_assembly
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --output=/home/astrezhneva/hm_rna_seq/trimmed/strtie.log
#SBATCH --partition=short

export PATH="/home/astrezhneva/.conda/envs/genome/bin/stringtie:$PATH"

BAM_FILE="RNA_Aligned.sortedByCoord.out.bam"
OUTPUT_GTF="transcripts.gtf"

stringtie $BAM_FILE -o $OUTPUT_GTF -p $SLURM_CPUS_PER_TASK
