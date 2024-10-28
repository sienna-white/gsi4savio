file(REMOVE_RECURSE
  "libgsi.a"
  "libgsi.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C Fortran)
  include(CMakeFiles/gsi.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
