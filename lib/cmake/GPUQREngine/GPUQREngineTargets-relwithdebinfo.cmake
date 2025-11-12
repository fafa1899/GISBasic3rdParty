#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::GPUQREngine" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::GPUQREngine APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::GPUQREngine PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/gpuqrengine.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::GPURuntime;SuiteSparse::SuiteSparseConfig"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/gpuqrengine.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::GPUQREngine )
list(APPEND _cmake_import_check_files_for_SuiteSparse::GPUQREngine "${_IMPORT_PREFIX}/lib/gpuqrengine.lib" "${_IMPORT_PREFIX}/bin/gpuqrengine.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
