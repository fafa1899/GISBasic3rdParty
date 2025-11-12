#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::BTF" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::BTF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::BTF PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/btf.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/btf.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::BTF )
list(APPEND _cmake_import_check_files_for_SuiteSparse::BTF "${_IMPORT_PREFIX}/lib/btf.lib" "${_IMPORT_PREFIX}/bin/btf.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
