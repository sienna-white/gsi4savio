#!/bin/sh
#BATCH --job-name=install_spack_packages
#SBATCH --partition=savio3 
#SBATCH --account=co_aiolos #fc_anemos # co_aiolos
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --time=00:10:00
#SBATCH --export=ALL

path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

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

spack install wps ^openmpi

echo "Done!!" 


