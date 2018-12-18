#!/bin/bash 

#BSUB -q bubble ####beamphysics-mpi
#BSUB -J regtest
#BSUB -W 10:00
#BSUB -n 8
#BSUB -o regtest.out
#BSUB -e regtest.err

export OPAL_EXE=/nfs/slac/g/beamphysics/nneveu/opal_test/software/bin

#Test
echo -e "Bsub job ID: $LSB_JOBID"
echo -e "Working dir: $LS_SUBCWD"
echo -e "Cd to scratch..."
#cd $PBS_O_WORKDIR
cp *.in /scratch
cd /scratch

# A little useful information for the log file...
echo -e "Master process running on: $HOSTNAME"
echo -e "Directory is:  $PWD"

mpirun -n 8 $OPAL_EXE/opal regtest-v2.0.in
cp *.stat $LS_SUBCWD

# Print the date again -- when finished
echo Finished at: `date`



