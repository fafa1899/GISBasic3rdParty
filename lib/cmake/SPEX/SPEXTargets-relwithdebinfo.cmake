#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::SPEX" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::SPEX APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::SPEX PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/spex.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::SuiteSparseConfig;SuiteSparse::AMD;SuiteSparse::COLAMD"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/spex.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::SPEX )
list(APPEND _cmake_import_check_files_for_SuiteSparse::SPEX "${_IMPORT_PREFIX}/lib/spex.lib" "${_IMPORT_PREFIX}/bin/spex.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
