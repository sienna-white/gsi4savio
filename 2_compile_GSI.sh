#!/bin/sh
#BATCH --job-name=install_spack_packages
#SBATCH --partition=savio3 
#SBATCH --account=co_aiolos #fc_anemos # co_aiolos
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --time=00:10:00
#SBATCH --export=ALL

cd /global/scratch/users/siennaw/gsi_2024/compiling/gsi4savio/GSIall

echo "Deleting build folder if it exists..." 
rm -r build
mkdir build 

path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

##############################
#STEPS to compile after the packages have been installed
##############################

# This sources the environment variables spack needs from the local spack folder
. ${path2spack}/share/spack/setup-env.sh

spack load bufr
spack load ip
spack load sp
spack load bacio
spack load w3emc
spack load sigio
spack load sfcio
spack load nemsio
spack load ncio
spack load gsi-ncdiag
spack load wrf-io
spack load crtm

#not sure if these are needed too
spack load blas
spack load netcdf-fortran
spack load netcdf-c


export CC=mpicc
export CXX=mpicxx
export FC=mpifort
export F77=mpifort

export TINA=/global/home/users/tinakc/spack/opt/spack/linux-rocky8-ivybridge/gcc-8.5.0

#try setting some of these in the CMakeLists.txt file
#cmake -D CMAKE_PREFIX_PATH=$TINA -D CMAKE_GSI_MODE=Regional ../   > cmake.out
#cmake -D CMAKE_PREFIX_PATH=$TINA -D CMAKE_GSI_MODE=Regional -D MPI_Fortran_COMPILER=mpifort ../  > cmake.out

cmake -DCMAKE_PREFIX_PATH=$TINA -DMPI_Fortran_COMPILER=$FC ../  > cmake.out

# Run make
echo "now running make..."
#make -j 16 VERBOSE=1 > make.out
# -j 16 means 16 processors (?)
#make  VERBOSE=1 > make.out

#or try to redirect stderr and stdout to the same file for easier debugging:
#make > hi.txt 2>&1
make  VERBOSE=1 > make.out 2>&1

