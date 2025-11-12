#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Ceres::ceres_cuda_kernels" for configuration "RelWithDebInfo"
set_property(TARGET Ceres::ceres_cuda_kernels APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Ceres::ceres_cuda_kernels PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CUDA"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/ceres_cuda_kernels.lib"
  )

list(APPEND _cmake_import_check_targets Ceres::ceres_cuda_kernels )
list(APPEND _cmake_import_check_files_for_Ceres::ceres_cuda_kernels "${_IMPORT_PREFIX}/lib/ceres_cuda_kernels.lib" )

# Import target "Ceres::ceres" for configuration "RelWithDebInfo"
set_property(TARGET Ceres::ceres APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Ceres::ceres PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/ceres.lib"
  )

list(APPEND _cmake_import_check_targets Ceres::ceres )
list(APPEND _cmake_import_check_files_for_Ceres::ceres "${_IMPORT_PREFIX}/lib/ceres.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
