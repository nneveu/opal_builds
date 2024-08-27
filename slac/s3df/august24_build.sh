export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv/.spack-env/view/lib
export LIBRARY_PATH=$LIBRARY_PATH:/sdf/group/ad/beamphysics/nneveu/spack/var/spack/environments/opalenv/.spack-env/view/lib

export SRC_DIR=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/
export PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install
export OTB_PREFIX=$PREFIX
export LIBRARY_PATH=$LIBRARY_PATH:$PREFIX
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PREFIX

#Only clone if you don't have an OPAL src repo already.
#mkdir -p "${SRC_DIR}/OPAL"
#cd "${SRC_DIR}/OPAL"
#git clone https://gitlab.psi.ch/OPAL/src.git

#cd "${SRC_DIR}/OPAL/src"
#git checkout OPAL-2024.1


mkdir -p "${SRC_DIR}/OPAL/build" && cd "$_"
#CC=mpicc CXX=mpicxx cmake -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"
#CC=mpicc CXX=mpicxx cmake -DBUILD_OPAL_PYTHON=ON -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"

CMAKE_CXX_FLAGS=-Wno-error=array-bounds -Wno-error=maybe-uninitialized -Wno-error=uninitialized
cmake -DMPI_C_COMPILER=mpicc -DMPI_CXX_COMPILER=mpicxx -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_INSTALL_PREFIX=/sdf/home/n/nneveu/sdf_beamphysics/nneveu/opal/OPAL/install "${SRC_DIR}/OPAL/src"
