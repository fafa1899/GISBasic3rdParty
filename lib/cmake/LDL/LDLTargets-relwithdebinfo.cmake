#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::LDL" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::LDL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::LDL PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/ldl.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/ldl.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::LDL )
list(APPEND _cmake_import_check_files_for_SuiteSparse::LDL "${_IMPORT_PREFIX}/lib/ldl.lib" "${_IMPORT_PREFIX}/bin/ldl.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
