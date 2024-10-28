#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "enkf::enkf" for configuration "Release"
set_property(TARGET enkf::enkf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(enkf::enkf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libenkf.a"
  )

list(APPEND _cmake_import_check_targets enkf::enkf )
list(APPEND _cmake_import_check_files_for_enkf::enkf "${_IMPORT_PREFIX}/lib64/libenkf.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
