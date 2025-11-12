#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::Mongoose" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::Mongoose APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::Mongoose PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/suitesparse_mongoose.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::SuiteSparseConfig"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/suitesparse_mongoose.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::Mongoose )
list(APPEND _cmake_import_check_files_for_SuiteSparse::Mongoose "${_IMPORT_PREFIX}/lib/suitesparse_mongoose.lib" "${_IMPORT_PREFIX}/bin/suitesparse_mongoose.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
