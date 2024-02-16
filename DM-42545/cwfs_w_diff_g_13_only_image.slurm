#!/bin/bash

#SBATCH --job-name=cwfs_w_diff_g_13_only_images
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
galsim -v 2 /gscratch/dirac/brycek/aos/closed_loop_tests/diffraction_test/cwfs_w_diff_g_13/iter0/pert/imsimConfig_1000.yaml

wait
