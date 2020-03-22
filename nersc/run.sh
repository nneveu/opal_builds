#!/bin/bash -l

#SBATCH -q premium 
#SBATCH -N 1
#SBATCH -t 00:20:00
#SBATCH -C knl
#####SBATCH --tasks-per-node=68

export opal=/global/cfs/cdirs/m669/nneveu/software/opal/
cd $SLURM_SUBMIT_DIR

#Test
echo -e "Bsub job ID: $LSB_JOBID"
echo -e "Working dir: $LS_SUBCWD"

# A little useful information for the log file...
echo -e "Master process running on: $HOSTNAME"
echo -e "Directory is:  $PWD"

srun -n 4 $opal /global/cfs/cdirs/m669/nneveu/software/opal/opal_builds/regtest-v2.0.in

echo Finished at: `date`


