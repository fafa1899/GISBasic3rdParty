#-------------------------------------------------------------------------------
# SuiteSparse/SuiteSparse_GPURuntime/cmake_modules/SuiteSparse_GPURuntimeConfig.cmake
#-------------------------------------------------------------------------------

# The following copyright and license applies to just this file only, not to
# the library itself:
# SuiteSparse_GPURuntimeConfig.cmake, Copyright (c) 2023, Timothy A. Davis.  All Rights Reserved.
# SPDX-License-Identifier: BSD-3-clause

#-------------------------------------------------------------------------------

# Finds the SuiteSparse_GPURuntime include file and compiled library.
# The following targets are defined:
#   SuiteSparse::GPURuntime           - for the shared library (if available)
#   SuiteSparse::GPURuntime_static    - for the static library (if available)

# For backward compatibility the following variables are set:

# SUITESPARSE_GPURUNTIME_INCLUDE_DIR - include directory for SuiteSparse_GPURuntime
# SUITESPARSE_GPURUNTIME_LIBRARY   - dynamic SuiteSparse_GPURuntime library
# SUITESPARSE_GPURUNTIME_STATIC    - static SuiteSparse_GPURuntime library
# SUITESPARSE_GPURUNTIME_LIBRARIES - libraries when using SuiteSparse_GPURuntime
# SUITESPARSE_GPURUNTIME_FOUND     - true if SuiteSparse_GPURuntime found

# Set ``CMAKE_MODULE_PATH`` to the parent folder where this module file is
# installed.

#-------------------------------------------------------------------------------


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was SuiteSparse_GPURuntimeConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

# Check for dependent targets
include ( CMakeFindDependencyMacro )

# Look for SuiteSparse_config target
if (  )
    if ( NOT TARGET SuiteSparse::SuiteSparseConfig )
        # First check in a common build tree
        find_dependency ( SuiteSparse_config 7.11
            PATHS ${CMAKE_SOURCE_DIR}/../SuiteSparse_config/build NO_DEFAULT_PATH )
        # Then, check in the currently active CMAKE_MODULE_PATH
        if ( NOT SuiteSparse_config_FOUND )
            find_dependency ( SuiteSparse_config 7.11 )
        endif ( )
    endif ( )
else ( )
    if ( NOT TARGET SuiteSparse::SuiteSparseConfig )
        find_dependency ( SuiteSparse_config 7.11 )
    endif ( )
endif ( )
if ( NOT SuiteSparse_config_FOUND )
    set ( SuiteSparse_GPURuntime_FOUND OFF )
    return ( )
endif ( )


# Import target
include ( ${CMAKE_CURRENT_LIST_DIR}/SuiteSparse_GPURuntimeTargets.cmake )

# The following is only for backward compatibility with FindSuiteSparse_GPURuntime.

set ( _target_shared SuiteSparse::GPURuntime )
set ( _target_static SuiteSparse::GPURuntime_static )
set ( _var_prefix "SUITESPARSE_GPURUNTIME" )

if ( NOT ON AND NOT TARGET ${_target_shared} )
    # make sure there is always an import target without suffix )
    add_library ( ${_target_shared} ALIAS ${_target_static} )
endif ( )

get_target_property ( ${_var_prefix}_INCLUDE_DIR ${_target_shared} INTERFACE_INCLUDE_DIRECTORIES )
if ( ${_var_prefix}_INCLUDE_DIR )
    # First item in SuiteSparse targets contains the "main" header directory.
    list ( GET ${_var_prefix}_INCLUDE_DIR 0 ${_var_prefix}_INCLUDE_DIR )
endif ( )
get_target_property ( ${_var_prefix}_LIBRARY ${_target_shared} IMPORTED_IMPLIB )
if ( NOT ${_var_prefix}_LIBRARY )
    get_target_property ( _library_chk ${_target_shared} IMPORTED_LOCATION )
    if ( EXISTS ${_library_chk} )
        set ( ${_var_prefix}_LIBRARY ${_library_chk} )
    endif ( )
endif ( )
if ( TARGET ${_target_static} )
    get_target_property ( ${_var_prefix}_STATIC ${_target_static} IMPORTED_LOCATION )
endif ( )

# Check for most common build types
set ( _config_types "Debug" "Release" "RelWithDebInfo" "MinSizeRel" "None" )

get_property ( _isMultiConfig GLOBAL PROPERTY GENERATOR_IS_MULTI_CONFIG )
if ( _isMultiConfig )
    # For multi-configuration generators (e.g., Visual Studio), prefer those
    # configurations.
    list ( PREPEND _config_types ${CMAKE_CONFIGURATION_TYPES} )
else ( )
    # For single-configuration generators, prefer the current configuration.
    list ( PREPEND _config_types ${CMAKE_BUILD_TYPE} )
endif ( )

list ( REMOVE_DUPLICATES _config_types )

foreach ( _config ${_config_types} )
    string ( TOUPPER ${_config} _uc_config )
    if ( NOT ${_var_prefix}_LIBRARY )
        get_target_property ( _library_chk ${_target_shared}
            IMPORTED_IMPLIB_${_uc_config} )
        if ( EXISTS ${_library_chk} )
            set ( ${_var_prefix}_LIBRARY ${_library_chk} )
        endif ( )
    endif ( )
    if ( NOT ${_var_prefix}_LIBRARY )
        get_target_property ( _library_chk ${_target_shared}
            IMPORTED_LOCATION_${_uc_config} )
        if ( EXISTS ${_library_chk} )
            set ( ${_var_prefix}_LIBRARY ${_library_chk} )
        endif ( )
    endif ( )
    if ( TARGET ${_target_static} AND NOT ${_var_prefix}_STATIC )
        get_target_property ( _library_chk ${_target_static}
            IMPORTED_LOCATION_${_uc_config} )
        if ( EXISTS ${_library_chk} )
            set ( ${_var_prefix}_STATIC ${_library_chk} )
        endif ( )
    endif ( )
endforeach ( )

set ( SUITESPARSE_GPURUNTIME_LIBRARIES ${SUITESPARSE_GPURUNTIME_LIBRARY} )

macro ( suitesparse_check_exist _var _files )
  # ignore generator expressions
  string ( GENEX_STRIP "${_files}" _files2 )

  foreach ( _file ${_files2} )
    if ( NOT EXISTS "${_file}" )
      message ( FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist!" )
    endif ( )
  endforeach ()
endmacro ( )

suitesparse_check_exist ( SUITESPARSE_GPURUNTIME_INCLUDE_DIR ${SUITESPARSE_GPURUNTIME_INCLUDE_DIR} )
suitesparse_check_exist ( SUITESPARSE_GPURUNTIME_LIBRARY ${SUITESPARSE_GPURUNTIME_LIBRARY} )

message ( STATUS "SuiteSparse_GPURuntime version: ${SPQR_VERSION}" )
message ( STATUS "SuiteSparse_GPURuntime include: ${SUITESPARSE_GPURUNTIME_INCLUDE_DIR}" )
message ( STATUS "SuiteSparse_GPURuntime library: ${SUITESPARSE_GPURUNTIME_LIBRARY}" )
message ( STATUS "SuiteSparse_GPURuntime static:  ${SUITESPARSE_GPURUNTIME_STATIC}" )

