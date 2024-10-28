
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was PackageConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

#enkf-config.cmake
#
# Imported interface targets provided:
#  * enkf::enkf - EnKF library target

# Include targets file.  This will create IMPORTED target enkf
include("${CMAKE_CURRENT_LIST_DIR}/enkf-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/enkf-config-version.cmake")
include(CMakeFindDependencyMacro)

# Get the ENKF_MODE attribute
set(ENKF_MODE GFS)

find_dependency(MPI)
find_dependency(NetCDF COMPONENTS Fortran)

# ON|OFF implies enkf was compiled with/without -DENABLE_MKL=ON|OFF
if(OFF)
  find_dependency(MKL REQUIRED)
  set(LAPACK_LIBRARIES ${MKL_LIBRARIES})
endif()
if(NOT OFF)
  find_dependency(LAPACK REQUIRED)
endif()

# ON|OFF implies enkf was compiled with/without OpenMP
if(OFF)
  find_dependency(OpenMP COMPONENTS Fortran)
endif()

# This gives more trouble since GSIApp is a nested project of projects
# and targets are built in the GSIApp project
#find_dependency(gsi REQUIRED)

# Get the build type from library target
get_target_property(enkf_BUILD_TYPES enkf::enkf IMPORTED_CONFIGURATIONS)

check_required_components("enkf")

get_target_property(location enkf::enkf LOCATION)
message(STATUS "Found enkf: ${location} (found version \"${PACKAGE_VERSION}\")")
message(STATUS "FindEnKF defines targets:")
message(STATUS "  - ENKF_MODE [${ENKF_MODE}]")
