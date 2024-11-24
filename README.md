# Compiling GSI, WPS + setting up conda 
last updated: Nov 24 2024

This repository contains information on "setting up" the executables + tools you need to run GSI on savio. Theroetically you could just copy the executables from my/Sienna's folder, but you will need to set up the conda environment yourself at a minimum, and it's good practice to try setting this all up yourself anyways. Most of this is pretty straightforward -- there's only a few steps that are quite involved. 


## 1. Install a local version of spack. 
You need to put this in scratch if your home directory is low on space!!! Clone the spack git directory into a nearby folder:

        $ git clone https://github.com/spack/spack
   
Note the path of this directory. You will assign it to the variable  

     $ path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

in the next two shell scripts. 

## 2. Install needed libraries using spack. You should open this script and edit the path2spack mentioned above. You can either run the shell script 

            $ ./1_install_GSI_packages.sh 

or submit to to slurm with 

            $ sbatch 1_install_GSI_packages.sh
            
From what I can tell, this script takes maybe ~60ish min to run when I used sbatch.

## 3. Run 2_compile_GSI.sh
You will need to edit two file paths in this. This line:

        $ path2spack=/global/scratch/users/siennaw/gsi_2024/compiling/spack

and this line:

        $ path2GSI=/global/scratch/users/siennaw/gsi_2024/compiling/gsi4savio/GSIall

note that the edited source code is in this folder -- so the real path you need to edit is just the path to where you've downloaded gsi4savio. Submit this job to run with sbatch. If all goes well it takes ~ 5 minutes.

## 4. Compile WPS and WRF
WPS is a pre-processing utility for WRF, but I discovered that if you install WPS using spack it will install a version of WRF as well. Two for one! The script is pretty straightforward -- just submit it to sbatch. It will take maybe 15 minutes.

        $ sbatch 3_compile_WPS_and_WRF.sh

## 5. Set up your conda environment.
For this specific task, I recommend that you log into savio on the command line (not through open on-demand). For some reason, I've found through personal experience that the log-in nodes are wayyyy faster than anything you'll get through on demand for creating conda environments. This will save you a lot of time! 

Once you're on the log-in node, you can create the environment with the following:

        $ conda env create -f environment.yml

This will take maybe 45-50 minutes if you're lucky. Sorry. At least you only have to do it once! Once it's done, you'll have a conda environment called "smoke_env" with all the packages you need. 

## 6. Find WPS
This last step is the only one that is ... involved. Spack very kindly did all the hard work of downloading + compiling WPS for you-- but you need to find where it actually stored the executables. On my computer, if I go into the spack directory and 

        $ cd opt/spack/linux-rocky8-skylake_avx512

I see that there are a bunch of folders for all the packages and dependencies I've installed. If you scroll all the way to the W's, you'll see something like

        $ wps-4.5-5f7rkpkdn2rbw3unhofw7omuvnadukhb
        
with a super long random alpha-numeric hash on the end (not sure why spack does this.) Open it up. You'll see a folder for metgrid, ungrib, and geogrid. In each of these you'll see an executable (metgrid.exe, ungrib.exe, etc). Copy them into some folder (wherever you like) called "wps_executables." Sorry again -- this step isn't that fun, but again, you only have to do it once! 


        
