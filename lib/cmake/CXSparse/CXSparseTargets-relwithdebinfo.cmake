#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::CXSparse" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::CXSparse APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::CXSparse PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/cxsparse.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::SuiteSparseConfig"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/cxsparse.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::CXSparse )
list(APPEND _cmake_import_check_files_for_SuiteSparse::CXSparse "${_IMPORT_PREFIX}/lib/cxsparse.lib" "${_IMPORT_PREFIX}/bin/cxsparse.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
