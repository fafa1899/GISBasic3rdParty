// tokenizer_result.h
#pragma once

#include <stdint.h>

// 定义结构体
struct TokenizerResult {
    int64_t* input_ids;
    int64_t* attention_mask;
    int64_t* token_type_ids;
    uint64_t length;
};

typedef struct TokenizerResult TokenizerResult;