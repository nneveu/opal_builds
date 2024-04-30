#!/bin/bash 

#BSUB -q beamphys-centos7
#BSUB -J regtest
#BSUB -W 10:00
#BSUB -n 8
#BSUB -o regtest.out
#BSUB -e regtest.err
#BSUB -R "span[ptile=36]"
#BSUB -x 
#####BSUB -sla bpmp #for bullet only 

export OPAL_EXE=/gpfs/slac/staas/fs1/g/g.beamphysics/neveu/opal_test/software/bin
export PATH=/gpfs/slac/staas/fs1/g/g.beamphysics/neveu/opal_test/software/H5hut-2.0.0rc4_build/lib:$PATH
export LD_LIBRARY_PATH=/gpfs/slac/staas/fs1/g/g.beamphysics/neveu/opal_test/software/H5hut-2.0.0rc4_build/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=/gpfs/slac/staas/fs1/g/g.beamphysics/neveu/opal_test/software/H5hut-2.0.0rc4_build/lib:$LIBRARY_PATH

#Test
echo -e "Bsub job ID: $LSB_JOBID"
echo -e "Working dir: $LS_SUBCWD"

# A little useful information for the log file...
echo -e "Master process running on: $HOSTNAME"
echo -e "Directory is:  $PWD"
mpirun -n 8 $OPAL_EXE/opal regtest-v2.0.in

# Print the date again -- when finished
echo Finished at: `date`



