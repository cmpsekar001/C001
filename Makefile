# Root Makefile for building Monero Daemon with VerusHash Integration

BUILD_DIR = monero-core/build

.PHONY: all monerod clean help

all: monerod

monerod:
	@echo "=== Configuring Monero with CMake (Manual Submodules) ==="
	mkdir -p $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake .. -DCMAKE_BUILD_TYPE=Release -DMANUAL_SUBMODULES=1
	@echo "=== Building daemon ==="
	cd $(BUILD_DIR) && make daemon -j$$(nproc)
	@echo "=== Build Complete! Binary located at: $(BUILD_DIR)/bin/monerod ==="

clean:
	@echo "=== Cleaning daemon build artifacts ==="
	rm -rf $(BUILD_DIR)
	@echo "Cleanup complete."

help:
	@echo "Available commands:"
	@echo "  make monerod   - Configure and build the full daemon"
	@echo "  make clean     - Remove build artifacts and clean workspace"
