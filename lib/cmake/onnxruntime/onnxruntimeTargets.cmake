# Define the imported target for onnxruntime
add_library(onnxruntime::onnxruntime SHARED IMPORTED)

# Specify include directories for the target
set_target_properties(onnxruntime::onnxruntime PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${ONNXRUNTIME_INCLUDE_DIR}"
    IMPORTED_LOCATION "${ONNXRUNTIME_BIN_DIR}/onnxruntime.dll"
    IMPORTED_IMPLIB "${ONNXRUNTIME_LIB_DIR}/onnxruntime.lib"
)
