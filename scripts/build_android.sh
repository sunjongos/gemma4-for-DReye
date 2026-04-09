#!/bin/bash
set -e

echo "=========================================================="
echo "DReye CAD (Medical Grade Edge AI) - Android NDK Build"
echo "=========================================================="

if [ -z "$ANDROID_NDK_HOME" ]; then
    echo "[ERROR] ANDROID_NDK_HOME is not set. Please set your NDK path."
    echo "Example: export ANDROID_NDK_HOME=/path/to/android-ndk-r26b"
    exit 1
fi

BUILD_DIR="build_android"
mkdir -p $BUILD_DIR
cd $BUILD_DIR

echo "[INFO] Configuring CMake for Android ARM64..."
# Using strict medical device build flags: Release mode, NPU acceleration targets
cmake -DCMAKE_TOOLCHAIN_FILE="$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake" \
      -DANDROID_ABI=arm64-v8a \
      -DANDROID_PLATFORM=android-28 \
      -DCMAKE_BUILD_TYPE=Release \
      -DDREYE_MEDICAL_STRICT_MODE=ON \
      ../android/

echo "[INFO] Compiling libdrey_ai.so..."
make -j$(nproc)

echo "[INFO] Build Complete. Library is ready for DReye Android CAD App."
