# Root Makefile for building Monero Daemon with VerusHash Integration on Termux/Linux

BUILD_DIR = monero-core/build

.PHONY: all monerod clean help

all: monerod

monerod:
	@echo "=== Configuring Monero with CMake for Termux ==="
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake .. \
		-DCMAKE_BUILD_TYPE=Release \
		-DMANUAL_SUBMODULES=1 \
		-DCMAKE_PREFIX_PATH="$$PREFIX" \
		-DBoost_NO_BOOST_CMAKE=ON \
		-DCMAKE_CXX_FLAGS="-Wno-deprecated-declarations" \
		-DCMAKE_C_FLAGS="-Wno-deprecated-declarations"
	@echo "=== Building daemon safely with 2 threads ==="
	cd $(BUILD_DIR) && make daemon -j2
	@echo "=== Build Complete! Binary located at: $(BUILD_DIR)/bin/monerod ==="

clean:
	@echo "=== Cleaning daemon build artifacts ==="
	rm -rf $(BUILD_DIR)
	@echo "Cleanup complete."

help:
	@echo "Available commands:"
	@echo "  make monerod   - Configure and build the full daemon"
	@echo "  make clean     - Remove build artifacts and clean workspace"
