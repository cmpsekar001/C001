# Monero-Verus Hybrid Blockchain

[![License: MIT/BSD](https://img.shields.io/badge/License-Custom-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Experimental%20%2F%20Academic%20Project-orange.svg)]()

A custom cryptographic currency project integrating **Monero's** advanced privacy architecture (CryptoNote, RingCT, stealth addresses) with the **Verus** consensus algorithm and hashing framework (`VerusHash`). 

This project explores the fusion of high-tier financial privacy with CPU-efficient, secure, and resistance-tailored consensus mechanics.

---

## 🏗️ Project Architecture & Overview

This repository bridges two powerful open-source blockchain ecosystems:
1. **Monero Core (`monero-core/`):** Provides the robust anonymity layer, peer-to-peer networking, wallet management, and transaction structuring.
2. **Verus Integration (`verushash-staging/` & `verus-core/`):** Incorporates the optimized Verus hashing functions (`VerusHash`, `haraka`, and `clhash`) to power the block hashing and consensus mechanism instead of native RandomX.

### Key Features
* **Privacy-First Transactions:** Retains Monero's cryptographic mixing properties.
* **Verus Algorithm Integration:** Leverages high-performance CPU hashing primitives for mining and validation.
* **Custom Daemon (`monerod`):** Compiled from source with custom Makefile and CMake rules incorporating Verus headers.

---

## 📂 Repository Structure

```text
├── monero-core/         # Modified Monero source code and daemon logic
├── verus-core/          # Verus reference files and dependencies
├── verushash-staging/   # VerusHash implementation headers and source (Haraka, clhash, sse2neon)
├── README.md            # Project documentation
└── .gitignore           # Excludes build binaries and temporary files


⚙️ Getting Started & Compilation

To build the custom monerod executable with Verus integration from source, follow these steps:
Prerequisites

Ensure you have the required development tools and libraries installed (standard dependencies for building Monero/Verus):

    CMake (v3.10+)

    GCC / Clang with C++11/C++14 support

    Boost libraries, OpenSSL, libunbound, and ZMQ

Build Instructions

    Clone the repository with subfolders:
    Bash

    git clone [https://github.com/cmpsekar001/C001.git](https://github.com/cmpsekar001/C001.git)
    cd C001

    Navigate to the Monero core source directory:
    Bash

    cd monero-core

    Create a build directory and compile:
    Bash

    mkdir build && cd build
    cmake ..
    make -j$(nproc)

    Locate the binary:
    Once compilation completes successfully, your custom daemon (monerod) will be available in the build/bin/ directory.

🤝 Contributing to Monero & Verus Ecosystems

We welcome contributions, code reviews, and performance optimizations from developers across both the Monero and Verus communities!

Whether you are looking to optimize verushash-staging memory performance or refine the CryptoNote consensus bindings:

    Fork the Repository

    Create your Feature Branch (git checkout -b feature/OptimizationFeature)

    Commit your Changes (git commit -m 'Add optimized Haraka hashing pipeline')

    Push to the Branch (git push origin feature/OptimizationFeature)

    Open a Pull Request

🛡️ Disclaimer

This is an experimental, academic yearly project demonstrating cross-consensus blockchain architecture. It is not audited for mainnet production financial use.

📜 Acknowledgments

    Monero Project: For pioneering decentralized transaction privacy.

    Verus Coin Developers: For the innovative CPU-focused VerusHash consensus design.

