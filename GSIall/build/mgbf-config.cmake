
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

#mgbf-config.cmake
#
# Imported interface targets provided:
#  * mgbf::MGBF - MGBF library target

# Include targets file.  This will create IMPORTED target mgbf
include("${CMAKE_CURRENT_LIST_DIR}/mgbf-targets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/mgbf-config-version.cmake")
include(CMakeFindDependencyMacro)

# Get the build type from library target
get_target_property(mgbf_BUILD_TYPES mgbf::mgbf IMPORTED_CONFIGURATIONS)

check_required_components("mgbf")

get_target_property(location mgbf::mgbf LOCATION)
message(STATUS "Found mgbf: ${location} (found version \"${PACKAGE_VERSION}\")")
