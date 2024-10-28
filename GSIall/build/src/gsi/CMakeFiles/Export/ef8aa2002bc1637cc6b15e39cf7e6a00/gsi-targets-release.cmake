#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gsi::gsi" for configuration "Release"
set_property(TARGET gsi::gsi APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gsi::gsi PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libgsi.a"
  )

list(APPEND _cmake_import_check_targets gsi::gsi )
list(APPEND _cmake_import_check_files_for_gsi::gsi "${_IMPORT_PREFIX}/lib64/libgsi.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
