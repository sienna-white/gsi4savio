#!/bin/sh
#BATCH --job-name=install_spack_packages
#SBATCH --partition=savio3 
#SBATCH --account=co_aiolos #fc_anemos # co_aiolos
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --time=00:25:00
#SBATCH --export=ALL


# Download WRF files:
#git clone https://github.com/wrf-model/WRF.git

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
spack load jasper
spack load hdf5

spack install wrf ^openmpi

exit 
export CC=mpicc
export CXX=mpicxx
export FC=mpifort
export F77=mpifort

# export GCC_PATH=${path2spack}/linux-rocky8-ivybridge/gcc-8.5.0
export NETCDF=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0/netcdf-fortran-4.6.1-x5tuaapbgkgthp444dyfpz5rylocr6i2
export GCC_PATH=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0
export JASPERLIB=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0/jasper-4.2.4-hugqxdaehzstml7tsqed4sia4wmjs3qd
export JASPERINC=${path2spack}/opt/spack/linux-rocky8-skylake_avx512/gcc-8.5.0/jasper-4.2.4-hugqxdaehzstml7tsqed4sia4wmjs3qd

export WRFIO_NCD_LARGE_FILE_SUPPORT=1
export HDF5_USE_FILE_LOCKING='FALSE'
export WRFIO_NCD_LARGE_FILE_SUPPORT=1

# *********************** SET UP BUILD FOLDER *******************
cd /global/scratch/users/siennaw/gsi_2024/compiling/WRF
# echo "Deleting build folder if it exists..." 
# rm -r build
# mkdir build 
# cd build 

./configure
./compile -j 10 em_real 

# *********************** RUNNING CMAKE ************************* 
# cmake ../ > cmake.out
# cmake -DCMAKE_PREFIX_PATH=$GCC_PATH -DMPI_Fortran_COMPILER=$FC ../  > cmake.out

# # *********************** RUNNING MAKE ************************* 
# echo "Running make..."

# # compile the program using 16 processors 
# make -j 16 > make.out

echo "Done!!" 





