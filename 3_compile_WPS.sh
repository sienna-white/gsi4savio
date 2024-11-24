#!/bin/sh
#BATCH --job-name=install_spack_packages
#SBATCH --partition=savio3 
#SBATCH --account=co_aiolos #fc_anemos # co_aiolos
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --time=00:10:00
#SBATCH --export=ALL


# Download WPS files:
# git clone https://github.com/wrf-model/WPS.git

path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

# *********************** COMPILE GSI ************************* 
# steps to compile after the packages have been installed
###############################################################

# This sources the environment variables spack needs from the local spack folder
. ${path2spack}/share/spack/setup-env.sh

# ****************** LOAD IN SPACK DIRECTORIES **************** 
spack load bufr
spack load ip
spack load sp
spack load bacio
spack load w3emc
spack load sigio
spack load sfcio
spack load nemsio
spack load ncio
# spack load gsi-ncdiag
spack load wrf-io
spack load crtm

spack load blas                 #not sure if these are needed too
spack load netcdf-fortran       #not sure if these are needed too
spack load netcdf-c             #not sure if these are needed too


export CC=mpicc
export CXX=mpicxx
export FC=mpifort
export F77=mpifort

# export GCC_PATH=${path2spack}/linux-rocky8-ivybridge/gcc-8.5.0
export NETCDF=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0/netcdf-c-4.9.2-huctf2c7f3iapgt4gjkwc74makybzjy3/
export GCC_PATH=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0

#try setting some of these in the CMakeLists.txt file
#cmake -D CMAKE_PREFIX_PATH=$TINA -D CMAKE_GSI_MODE=Regional ../   > cmake.out
#cmake -D CMAKE_PREFIX_PATH=$TINA -D CMAKE_GSI_MODE=Regional -D MPI_Fortran_COMPILER=mpifort ../  > cmake.out

# *********************** SET UP BUILD FOLDER *******************
cd /global/scratch/users/siennaw/gsi_2024/compiling/WPS
# echo "Deleting build folder if it exists..." 
# rm -r build
# mkdir build 
# cd build 

./configure
./compile

# *********************** RUNNING CMAKE ************************* 
# cmake ../ > cmake.out
# cmake -DCMAKE_PREFIX_PATH=$GCC_PATH -DMPI_Fortran_COMPILER=$FC ../  > cmake.out

# # *********************** RUNNING MAKE ************************* 
# echo "Running make..."

# # compile the program using 16 processors 
# make -j 16 > make.out

echo "Done!!" 
# -j 16 means 16 processors (?) 
#make  VERBOSE=1 > make.out

#or try to redirect stderr and stdout to the same file for easier debugging:
#make > hi.txt 2>&1
# make  VERBOSE=1 > make.out 2>&1

