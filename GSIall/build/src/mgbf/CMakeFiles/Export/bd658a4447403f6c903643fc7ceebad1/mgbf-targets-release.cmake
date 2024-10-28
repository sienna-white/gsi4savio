#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mgbf::mgbf" for configuration "Release"
set_property(TARGET mgbf::mgbf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mgbf::mgbf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libmgbf.a"
  )

list(APPEND _cmake_import_check_targets mgbf::mgbf )
list(APPEND _cmake_import_check_files_for_mgbf::mgbf "${_IMPORT_PREFIX}/lib64/libmgbf.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
