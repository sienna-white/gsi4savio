NOTES ON COMPILING GSI 
last updated: Oct 28 2024

(1) Install a local version of spack. Clone the spack git directory into a nearby  
    folder:

        $ git clone https://github.com/spack/spack

    Note the path of this directory. You will assign it to the varible 

        $ path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

    in the next two shell scripts. 

(2) Install needed libraries using spack. You should open this script and edit
    the path2spack mentioned above. 

    You can either run the shell script 

        $ ./1_install_GSI_packages.sh 

    or submit to to slurm with 

        $ sbatch 1_install_GSI_packages.sh
        
    In my experience this script took maybe ~20ish min to run when I used sbatch.

(3) 


#NO use your own installation
#module load spack

#START HERE to install NCEPLIBS which is needed by new version of GSI

#Try this instead to install a local version of spac. 




#this sources the environment variables spack needs from the local spack folder 
#note the . at the beginning of the line
#. spack/share/spack/setup-env.sh

#spack external find cmake gmake 
#output was ==> No new external packages detected
#spack install ip@develop precision=4 ^sp@2.4.0 precision=4

#module purge
#module load gcc/13.2.0
#module load openmpi/4.1.6
#module load cmake/3.27.7
#module load netlib-lapack/3.11.0
#module load nco/5.1.6
#module load intel-oneapi-mkl/2023.2.0
#module load hdf5/1.14.3
#module load netcdf-c/4.9.2
#module load netcdf-fortran/4.6.1
##module load spack

#Install NCEPLIBS libraries first


git clone https://github.com/spack/spack
. spack/share/spack/setup-env.sh # assuming bash, zsh, or dash shell

spack external find cmake gmake # find external packages to save time

#this is develop mode, didn't work: spack install ip@develop precision=4 ^sp@2.4.0 precision=4

#this worked!
spack install bufr
spack install ip
spack install sp
spack install bacio
spack install w3emc
spack install sigio
spack install sfcio
spack install nemsio
spack install ncio
spack install gsi-ncdiag
spack install wrf-io
spack install crtm #error no disk space, tried again later and it worked

spack install blas  #not sure if needed


