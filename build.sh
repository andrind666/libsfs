#!/bin/bash
set -e

echo "Setting up environment..."
export CEF_PATH=$GITHUB_WORKSPACE/cef_project
export NDK_TOOLCHAIN=$ANDROID_NDK/toolchains/llvm/prebuilt/linux-x86_64/bin
export TARGET=aarch64-linux-android

echo "Building libsfs.so for ARM64 (AArch64)..."
$NDK_TOOLCHAIN/${TARGET}21-clang -shared -o libsfs.so libsfs/libsfs.c \
    -I$CEF_PATH/include \
    -L$CEF_PATH -lcef \
    -march=armv8-a

echo "Build complete. Output: libsfs.so"
