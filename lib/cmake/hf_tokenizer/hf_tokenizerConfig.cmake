# Find the hf_tokenizer installation
set(HF_TOKENIZER_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../include/hf_tokenizer")
set(HF_TOKENIZER_LIB_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../lib")
set(HF_TOKENIZER_BIN_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../bin")

# Import the targets
include("${CMAKE_CURRENT_LIST_DIR}/hf_tokenizerTargets.cmake")