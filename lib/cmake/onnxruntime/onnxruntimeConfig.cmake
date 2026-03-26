# Find the onnxruntime installation
set(ONNXRUNTIME_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../include/onnxruntime")
set(ONNXRUNTIME_LIB_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../lib")
set(ONNXRUNTIME_BIN_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../bin")

# Import the targets
include("${CMAKE_CURRENT_LIST_DIR}/onnxruntimeTargets.cmake")