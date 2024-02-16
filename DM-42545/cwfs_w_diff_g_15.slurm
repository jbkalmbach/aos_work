#!/bin/bash

#SBATCH --job-name=cwfs_w_diff_g_15
#SBATCH --mail-type=ALL
#SBATCH --mail-user=jbkalmbach@gmail.com

#SBATCH --account=astro
#SBATCH --partition=compute-bigmem
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=60G

#SBATCH --time=8:00:00 # Max runtime in DD-HH:MM:SS format.

#SBATCH --chdir=/gscratch/dirac/brycek/
#SBATCH --export=all
##SBATCH --output=/gscratch/dirac/brycek/aos/imsim_closed_loop/test # where STDOUT goes
##SBATCH --error=/gscratch/dirac/bryce/aos/imsim_closed_loop/test # where STDERR goes

# Modules to use (optional).
source setup_imsim.sh

# Your programs to run.
img_closed_loop.py --output /gscratch/dirac/brycek/aos/closed_loop_tests/diffraction_test/cwfs_w_diff_g_15 --iter_num 10 --config_pointer_file ts_imsim/policy/config/lsstCamWithDiffractionPointer.yaml --star_mag 15 --clobber --num_proc 8 --imsim_log_file imsim_output.log

wait
