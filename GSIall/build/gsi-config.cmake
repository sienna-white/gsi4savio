
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

#gsi-config.cmake
#
# Imported interface targets provided:
#  * gsi::gsi - GSI library target

# Include targets file.  This will create IMPORTED target gsi
include("${CMAKE_CURRENT_LIST_DIR}/gsi-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/gsi-config-version.cmake")
include(CMakeFindDependencyMacro)

# Get the GSI_MODE attribute
set(GSI_MODE Regional)

find_dependency(MPI)
find_dependency(NetCDF COMPONENTS Fortran)

# ON|OFF implies gsi was compiled with/without -DENABLE_MKL=ON|OFF
if(OFF)
  find_dependency(MKL REQUIRED)
  set(LAPACK_LIBRARIES ${MKL_LIBRARIES})
endif()
if(NOT OFF)
  find_dependency(LAPACK REQUIRED)
endif()

# ON|OFF implies gsi was compiled with/without OpenMP
if(OFF)
  find_dependency(OpenMP COMPONENTS Fortran)
endif()

find_dependency(bacio REQUIRED)
find_dependency(sigio REQUIRED)
find_dependency(sfcio REQUIRED)
find_dependency(nemsio REQUIRED)
find_dependency(ncio REQUIRED)
find_dependency(ncdiag REQUIRED)
find_dependency(sp REQUIRED)
find_dependency(ip REQUIRED)
find_dependency(w3emc REQUIRED)
find_dependency(bufr REQUIRED)
find_dependency(crtm REQUIRED)

if(${GSI_MODE} MATCHES "Regional")
  find_dependency(wrf_io REQUIRED)
endif()

# Get the build type from library target
get_target_property(gsi_BUILD_TYPES gsi::gsi IMPORTED_CONFIGURATIONS)

check_required_components("gsi")

get_target_property(location gsi::gsi LOCATION)
message(STATUS "Found gsi: ${location} (found version \"${PACKAGE_VERSION}\")")
message(STATUS "FindGSI defines targets:")
message(STATUS "  - GSI_MODE [${GSI_MODE}]")
