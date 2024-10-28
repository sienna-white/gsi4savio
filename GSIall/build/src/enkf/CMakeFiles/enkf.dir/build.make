# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /global/home/users/tinakc/GSIall

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /global/home/users/tinakc/GSIall/build

# Include any dependencies generated for this target.
include src/enkf/CMakeFiles/enkf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/enkf/CMakeFiles/enkf.dir/compiler_depend.make

# Include the progress variables for this target.
include src/enkf/CMakeFiles/enkf.dir/progress.make

# Include the compile flags for this target's objects.
include src/enkf/CMakeFiles/enkf.dir/flags.make

# Object files for target enkf
enkf_OBJECTS =

# External object files for target enkf
enkf_EXTERNAL_OBJECTS = \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/controlvec.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/covlocal.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf_obs_sensitivity.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf_obsmod.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/expand_ens.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/fftpack.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/genqsat1.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/inflation.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/innovstats.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/kdtree2.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/letkf.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/loadbal.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/mpi_readobs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/mpisetup.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/netcdf_io_wrf.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/params.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/quicksort.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/radbias.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/read_locinfo.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/readconvobs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/readozobs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/readsatobs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/reducedgrid.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/rnorm.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/sorting.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/specmod.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/statevec.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/write_logfile.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/gridinfo_gfs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/gridio_gfs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/observer_gfs.f90.o" \
"/global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf_fortran_obj.dir/smooth_gfs.f90.o"

src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/controlvec.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/covlocal.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf_obs_sensitivity.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/enkf_obsmod.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/expand_ens.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/fftpack.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/genqsat1.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/inflation.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/innovstats.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/kdtree2.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/letkf.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/loadbal.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/mpi_readobs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/mpisetup.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/netcdf_io_wrf.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/params.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/quicksort.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/radbias.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/read_locinfo.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/readconvobs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/readozobs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/readsatobs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/reducedgrid.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/rnorm.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/sorting.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/specmod.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/statevec.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/write_logfile.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/gridinfo_gfs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/gridio_gfs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/observer_gfs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf_fortran_obj.dir/smooth_gfs.f90.o
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf.dir/build.make
src/enkf/libenkf.a: src/enkf/CMakeFiles/enkf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/global/home/users/tinakc/GSIall/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking Fortran static library libenkf.a"
	cd /global/home/users/tinakc/GSIall/build/src/enkf && $(CMAKE_COMMAND) -P CMakeFiles/enkf.dir/cmake_clean_target.cmake
	cd /global/home/users/tinakc/GSIall/build/src/enkf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/enkf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/enkf/CMakeFiles/enkf.dir/build: src/enkf/libenkf.a
.PHONY : src/enkf/CMakeFiles/enkf.dir/build

src/enkf/CMakeFiles/enkf.dir/clean:
	cd /global/home/users/tinakc/GSIall/build/src/enkf && $(CMAKE_COMMAND) -P CMakeFiles/enkf.dir/cmake_clean.cmake
.PHONY : src/enkf/CMakeFiles/enkf.dir/clean

src/enkf/CMakeFiles/enkf.dir/depend:
	cd /global/home/users/tinakc/GSIall/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /global/home/users/tinakc/GSIall /global/home/users/tinakc/GSIall/src/enkf /global/home/users/tinakc/GSIall/build /global/home/users/tinakc/GSIall/build/src/enkf /global/home/users/tinakc/GSIall/build/src/enkf/CMakeFiles/enkf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/enkf/CMakeFiles/enkf.dir/depend

