#!/bin/bash
#SBATCH -p workq
#SBATCH -n 48
#SBATCH -t 72:00:00
#SBATCH -A loni_loni_tsr_2
#SBATCH -N 1
#SBATCH -J key_triplets
#SBATCH -o output_key_triplets.out
#SBATCH -e error_key_triplets.err

cd $SLURM_SUBMIT_DIR

# python key_triplets.py 
# This is to run using the venv path
/work/rauniyar/Research_Fall/multiple_keys/venv/bin/python key_triplets.py /work/rauniyar/Research_Fall/multiple_keys/sample_details.csv /work/rauniyar/Research_Fall/multiple_keys/pdb_files /work/rauniyar/Research_Fall/multiple_keys/proteins
