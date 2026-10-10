# Monero-Verus Hybrid Mining & Consensus Client

[![License: MIT/BSD](https://img.shields.io/badge/License-Custom-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Experimental%20%2F%20Academic%20Project-orange.svg)]()

A lightweight, standalone C++ VerusHash mining and consensus client integrating **Monero's** advanced cryptography primitives with the **Verus** hashing framework (`VerusHash`, `Haraka`, and `CLHash`). 

This project explores cross-consensus architecture optimized for high-performance CPU execution across standard **Linux (x86_64)** and **Android (Termux / ARM)** environments.

---

## 🏗️ Project Architecture & Overview

This repository unifies essential cryptographic sub-modules into a streamlined workspace:
1. **Monero Core (`monero-core/`):** Houses Monero's core crypto library source tree, including integrated VerusHash bindings, data structures (`uint256`, `arith_uint256`), and univalue components.
2. **Unified Crypto Sources (`monero-core/src/crypto/verushash/`):** Combines Haraka, CLHash, and portable software simulation fallbacks directly within the Monero tree to eliminate redundancy.

### Key Features
- **Standalone C++ Miner Client (`miner_client`):** High-efficiency mining execution loop.
- **Cross-Platform Support:** Fully compatible with standard Linux systems and mobile ARM architectures via Termux on Android.
- **Optimized Hybrid Compilation:** Automated script managing C/C++ compilation splits, object file isolation, and SIMD instruction flags.

---

## 📂 Repository Structure

```text
├── monero-core/        # Integrated Monero source code and Verus crypto primitives
├── build_miner.sh      # Automated build and cleanup script
├── miner_client.cpp    # Standalone C++ miner client entry point
├── README.md           # Project documentation
└── .gitignore          # Excludes build artifacts and temporary files

⚙️ Getting Started & Compilation
Prerequisites

Ensure your development environment has the necessary compiler toolchains installed:

    GCC / G++ (supporting C++11/C++14)

    Make / Bash shell

    Target hardware instruction support (AES, SSE2, PCLMUL, SSSE3)

Build Instructions

    Clone the repository:
    Bash

    git clone [https://github.com/cmpsekar001/C001.git](https://github.com/cmpsekar001/C001.git)
    cd C001

    Make the build script executable:
    Bash

    chmod +x build_miner.sh

    Compile the miner client:
    Bash

    ./build_miner.sh

    The script will automatically compile C cryptographic sources with gcc (preserving flat C linkage), compile C++ components, handle object file organization in a temporary build/ directory, and output the final binary ./miner_client.

    Cleaning Build Artifacts:
    To wipe out temporary object files and binaries, run:
    Bash

    ./build_miner.sh clean

📱 Android & Termux Support

For deployment on Android devices via Termux:

    Ensure your architecture has proper toolchain support installed (pkg install clang make git).

    The build script handles portable fallbacks and instruction flags for cross-architecture compatibility.

🤝 Contributing

We welcome contributions, code reviews, and performance optimizations from developers across both the Monero and Verus communities!

    Fork the Repository

    Create your Feature Branch (git checkout -b feature/OptimizationFeature)

    Commit your Changes (git commit -m 'Add optimized hashing pipeline')

    Push to the Branch (git push origin feature/OptimizationFeature)

    Open a Pull Request

🛡️ Disclaimer

This is an experimental, academic project demonstrating cross-consensus blockchain architecture. It is not audited for mainnet production financial use.
📜 Acknowledgments

    Monero Project: For pioneering decentralized transaction privacy.

    Verus Coin Developers: For the innovative CPU-focused VerusHash consensus design.

