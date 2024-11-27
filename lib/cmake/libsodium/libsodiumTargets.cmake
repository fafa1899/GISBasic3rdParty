# Define the imported target for libsodium
add_library(libsodium::libsodium SHARED IMPORTED)

# Specify include directories for the target
set_target_properties(libsodium::libsodium PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${LIBSODIUM_INCLUDE_DIR}"
    IMPORTED_LOCATION "${LIBSODIUM_BIN_DIR}/libsodium.dll"
    IMPORTED_IMPLIB "${LIBSODIUM_LIB_DIR}/libsodium.lib"
)
