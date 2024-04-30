###module load mpi/openmpi-x86_64
#module load mpich/mpich-x86_64
#module load hdf5/mpich-EPEL

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv/.spack-env/view/lib
export LIBRARY_PATH=$LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv/.spack-env/view/lib

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv2/.spack-env/view/lib
#export LIBRARY_PATH=$LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv2/.spack-env/view/lib

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/lib
#export LIBRARY_PATH=$LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/lib
#export PATH=$PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/bin

#export HDF5_INCLUDE_DIRS=/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/include
#export HDF5_LIBRARIES=/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/lib
#export HDF5_ROOT=/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalopenmpi/.spack-env/view/
#export H5_HAVE_PARALLEL=1

export SRC_DIR=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/
export PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install
export OTB_PREFIX=$PREFIX
export LIBRARY_PATH=$LIBRARY_PATH:$PREFIX
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PREFIX

#mkdir -p "${SRC_DIR}/OPAL"
#cd "${SRC_DIR}/OPAL"
#git clone https://gitlab.psi.ch/OPAL/src.git

#cd "${SRC_DIR}/OPAL/src"
#git checkout OPAL-2023.1

#mkdir -p "${SRC_DIR}/OPAL/build" && cd "$_"
#CC=mpicc CXX=mpicxx cmake -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"
#CC=mpicc CXX=mpicxx cmake -DBUILD_OPAL_PYTHON=ON -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"

#cmake -DMPI_C_COMPILER=gcc -DMPI_CXX_COMPILER=g++ -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"
