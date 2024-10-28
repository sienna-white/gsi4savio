file(REMOVE_RECURSE
  "libenkf.a"
  "libenkf.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang Fortran)
  include(CMakeFiles/enkf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
