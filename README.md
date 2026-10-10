# Monero-Verus Hybrid Daemon & Consensus Architecture

[![License: MIT/BSD](https://img.shields.io/badge/License-Custom-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Experimental%20%2F%20Academic%20Project-orange.svg)]()

An advanced cryptographic currency project integrating **Monero's** robust privacy architecture (CryptoNote, RingCT, stealth addresses) with the **Verus** consensus algorithm and hashing framework (`VerusHash`, `Haraka`, and `CLHash`).

This project explores the cross-consensus fusion of high-tier financial privacy with CPU-efficient, secure, and resistance-tailored mining mechanics across standard **Linux (x86_64)** and **Android (Termux / ARM)** platforms.

---

## 🏗️ Project Architecture & Overview

This repository unifies essential cryptographic modules into a streamlined workspace:
1. **Monero Core (`monero-core/`):** Houses Monero's core daemon logic, networking layer, wallet management, and integrated VerusHash source bindings (`verus_hash.cpp`, `haraka.c`, etc.).
2. **Unified Cryptographic Pipeline:** Eliminates standalone staging folders by embedding optimized primitives directly into Monero's native crypto tree.

### Key Features
- **Custom Monero Daemon (`monerod`):** Compiled from source using Monero's CMake/Make build system with integrated Verus consensus bindings.
- **Cross-Platform Support:** Fully compatible with standard Linux systems and mobile ARM environments via Termux on Android.
- **Optimized Compilation Rules:** Automated root `Makefile` handling manual submodules, release configurations, and platform prefix paths.

---

## 📂 Repository Structure

```text
├── monero-core/        # Integrated Monero daemon source code & Verus primitives
├── Makefile            # Root GNU Make automation rules for monerod
├── build_miner.sh      # Standalone C++ miner client build utility
├── miner_client.cpp    # Standalone C++ miner client entry point
├── README.md           # Project documentation
└── .gitignore          # Excludes build binaries and temporary files

⚙️ Getting Started & Compilation
Prerequisites (Standard Linux / x86_64)

Ensure your development environment has the necessary toolchains and libraries installed:

    CMake (v3.10+)

    GCC / G++ (supporting C++11/C++14)

    Boost libraries, OpenSSL, libunbound, and ZMQ

Build Instructions (monerod on Linux)

    Clone the repository:
    Bash

    git clone [https://github.com/cmpsekar001/C001.git](https://github.com/cmpsekar001/C001.git)
    cd C001

    Build the Custom Daemon:
    Run the automated root Makefile command:
    Bash

    make monerod

    This automatically handles manual submodules, configures CMake in release mode, and compiles the full daemon utilizing all available CPU cores.

    Locate Your Binary:
    Once compilation completes successfully, your custom daemon will be ready at:
    Plaintext

    monero-core/build/bin/monerod

    Cleaning Build Artifacts:
    To reset the daemon build environment, run:
    Bash

    make clean

📱 Android & Termux Support

To compile and run the custom daemon on mobile ARM architectures via Termux, follow these setup steps:

    Install Prerequisites in Termux:
    Update your package manager and install the required compiler toolchains, Boost development packages, OpenSSL, and ZMQ:
    Bash

    pkg update
    pkg install clang make cmake git boost libboost-dev libboost_filesystem-dev libboost_system-dev libboost_thread-dev libboost_serialization-dev libboost_program-options-dev openssl libzmq unbound

    Build the Daemon:
    The root Makefile is configured to automatically detect and handle Termux's custom prefix environment variables ($PREFIX) and CMake fallback parameters (-DBoost_NO_BOOST_CMAKE=ON). Simply run:
    Bash

    make clean
    make monerod

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
