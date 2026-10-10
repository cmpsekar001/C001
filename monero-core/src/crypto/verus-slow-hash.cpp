#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include "verushash/verus_hash.h"

extern "C" {

void verus_slow_hash(const void *data, size_t length, char *hash) {
    // VerusHash expects: Hash(void *result, const void *data, size_t len)
    CVerusHash::Hash(hash, data, length);
}

} // extern "C"
