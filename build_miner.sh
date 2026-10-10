#!/bin/bash
set -e

# Create a build directory for object files
mkdir -p build

echo "=== Building VerusHash Monero Miner Client ==="

echo "[1/2] Compiling C cryptographic sources..."
gcc -O3 -c monero-core/src/crypto/verushash/haraka.c -o build/haraka.o \
    -Iverushash-staging -Imonero-core/src/crypto/verushash -maes -msse2 -mpclmul -mssse3

gcc -O3 -c monero-core/src/crypto/verushash/haraka_portable.c -o build/haraka_portable.o \
    -Iverushash-staging -Imonero-core/src/crypto/verushash -maes -msse2 -mpclmul -mssse3

echo "[2/2] Compiling C++ components and linking binary..."
g++ -O3 miner_client.cpp \
    monero-core/src/crypto/verushash/verus_hash.cpp \
    monero-core/src/crypto/verushash/verus_clhash.cpp \
    monero-core/src/crypto/verushash/verus_clhash_portable.cpp \
    monero-core/src/crypto/verushash/uint256.cpp \
    monero-core/src/crypto/verushash/arith_uint256.cpp \
    monero-core/src/crypto/verushash/utilstrencodings.cpp \
    build/haraka.o \
    build/haraka_portable.o \
    -Iverushash-staging \
    -Imonero-core/src \
    -Imonero-core/src/crypto/verushash \
    -Imonero-core/src/crypto/verushash/univalue/include \
    -maes -msse2 -mpclmul -mssse3 \
    -o miner_client

echo "=== Build Complete! Executable ready: ./miner_client ==="
