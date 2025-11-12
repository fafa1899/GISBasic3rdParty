#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SuiteSparse::LAGraph" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::LAGraph APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::LAGraph PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/lagraph.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::GraphBLAS"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/lagraph.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::LAGraph )
list(APPEND _cmake_import_check_files_for_SuiteSparse::LAGraph "${_IMPORT_PREFIX}/lib/lagraph.lib" "${_IMPORT_PREFIX}/bin/lagraph.dll" )

# Import target "SuiteSparse::LAGraphX" for configuration "RelWithDebInfo"
set_property(TARGET SuiteSparse::LAGraphX APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(SuiteSparse::LAGraphX PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/lagraphx.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "SuiteSparse::LAGraph;SuiteSparse::GraphBLAS"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/lagraphx.dll"
  )

list(APPEND _cmake_import_check_targets SuiteSparse::LAGraphX )
list(APPEND _cmake_import_check_files_for_SuiteSparse::LAGraphX "${_IMPORT_PREFIX}/lib/lagraphx.lib" "${_IMPORT_PREFIX}/bin/lagraphx.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
