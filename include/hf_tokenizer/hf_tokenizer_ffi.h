// hf_tokenizer_ffi
#pragma once

#include "tokenizer_result.h"

#ifdef __cplusplus
extern "C" {
#endif

void* tokenizer_create(const char* tokenizer_json_path);
void tokenizer_destroy(void* handle);
TokenizerResult tokenizer_encode(void* handle, const char* text);
uint64_t tokenizer_count(void* handle, const char* text);
void tokenizer_result_free(TokenizerResult result);

#ifdef __cplusplus
}
#endif
