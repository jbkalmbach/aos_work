#!/bin/bash

#SBATCH --job-name=ts_imsim_fam_g_12
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jbkalmbach@gmail.com

#SBATCH --account=astro
#SBATCH --partition=compute-bigmem
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=80G

#SBATCH --time=24:00:00 # Max runtime in DD-HH:MM:SS format.

#SBATCH --chdir=/gscratch/dirac/brycek/
#SBATCH --export=all
##SBATCH --output=/gscratch/dirac/brycek/aos/imsim_closed_loop/test # where STDOUT goes
##SBATCH --error=/gscratch/dirac/bryce/aos/imsim_closed_loop/test # where STDERR goes

# Modules to use (optional).
source setup_imsim.sh

# Your programs to run.
img_closed_loop.py --output /gscratch/dirac/brycek/aos/closed_loop_tests/diffraction_test/fam_w_diff_g_12 --iter_num 10 --config_pointer_file ts_imsim/policy/config/lsstFamNoPertPointer.yaml --star_mag 12 --clobber --num_proc 8 --inst lsstfam --imsim_log_file imsim_output.log

wait
