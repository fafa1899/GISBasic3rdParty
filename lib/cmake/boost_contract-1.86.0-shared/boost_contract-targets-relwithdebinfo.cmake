#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Boost::contract" for configuration "RelWithDebInfo"
set_property(TARGET Boost::contract APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Boost::contract PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/boost_contract-vc142-mt-x64-1_86.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/boost_contract-vc142-mt-x64-1_86.dll"
  )

list(APPEND _cmake_import_check_targets Boost::contract )
list(APPEND _cmake_import_check_files_for_Boost::contract "${_IMPORT_PREFIX}/lib/boost_contract-vc142-mt-x64-1_86.lib" "${_IMPORT_PREFIX}/bin/boost_contract-vc142-mt-x64-1_86.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
