# Compiling GSI 
last updated: Oct 28 2024

1. Install a local version of spack. You need to put this in scratch!!!! Clone the spack git directory into a nearby folder:

        $ git clone https://github.com/spack/spack
Note the path of this directory. You will assign it to the variable  

     $ path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

in the next two shell scripts. 

2. Install needed libraries using spack. You should open this script and edit the path2spack mentioned above. You can either run the shell script 

            $ ./1_install_GSI_packages.sh 

or submit to to slurm with 
            $ sbatch 1_install_GSI_packages.sh
            
From what I can tell, this script takes maybe ~60ish min to run when I used sbatch.
