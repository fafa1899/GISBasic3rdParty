#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PROJ::proj" for configuration "RelWithDebInfo"
set_property(TARGET PROJ::proj APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(PROJ::proj PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/proj.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/proj_9_4.dll"
  )

list(APPEND _cmake_import_check_targets PROJ::proj )
list(APPEND _cmake_import_check_files_for_PROJ::proj "${_IMPORT_PREFIX}/lib/proj.lib" "${_IMPORT_PREFIX}/bin/proj_9_4.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
