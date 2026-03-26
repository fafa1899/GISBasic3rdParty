# Define the imported target for hf_tokenizer
add_library(hf_tokenizer::hf_tokenizer SHARED IMPORTED)

# Specify include directories for the target
set_target_properties(hf_tokenizer::hf_tokenizer PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${HF_TOKENIZER_INCLUDE_DIR}"
    IMPORTED_LOCATION "${HF_TOKENIZER_BIN_DIR}/hf_tokenizer_rust_capi.dll"
    IMPORTED_IMPLIB "${HF_TOKENIZER_LIB_DIR}/hf_tokenizer_rust_capi.dll.lib"
)
