#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::GPURuntime" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::GPURuntime APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::GPURuntime PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/suitesparse_gpuruntime.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::SuiteSparseConfig"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/suitesparse_gpuruntime.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::GPURuntime )
list(APPEND _cmake_import_check_files_for_SuiteSparse::GPURuntime "${_IMPORT_PREFIX}/lib/suitesparse_gpuruntime.lib" "${_IMPORT_PREFIX}/bin/suitesparse_gpuruntime.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
