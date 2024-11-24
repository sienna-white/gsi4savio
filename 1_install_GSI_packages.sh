#!/bin/sh
#BATCH --job-name=install_spack_packages
#SBATCH --partition=savio3 
#SBATCH --account=co_aiolos #fc_anemos # co_aiolos
#SBATCH --nodes=1
#SBATCH --cpus-per-task=32
#SBATCH --time=02:00:00
#SBATCH --export=ALL

# YOU WILL NEED TO CHANGE THIS 
path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

# This sources the environment variables spack needs from the local spack folder
. ${path2spack}/share/spack/setup-env.sh # assuming bash, zsh, or dash shell

# spack install bufr
# spack install ip
# spack install sp
# spack install bacio
# spack install w3emc
# spack install sigio
# spack install sfcio
# spack install nemsio
# spack install ncio
# spack install gsi-ncdiag
# spack install wrf-io
# spack install crtm      # error no disk space, tried again later and it worked
# spack install blas      # not sure if needed
# spack install gcc@8.5.0
# spack install nco 


spack install jasper
spack install hdf5
