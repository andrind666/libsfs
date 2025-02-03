#!/bin/bash
set -e

echo "Setting up environment..."
export CEF_PATH=$GITHUB_WORKSPACE/cef_project
export NDK_TOOLCHAIN=/usr/bin/clang

echo "Building libsfs.so for ARM64..."
$NDK_TOOLCHAIN -shared -o libsfs.so libsfs/libsfs.c \
    -I$CEF_PATH/include \
    -L$CEF_PATH -lcef \
    -march=armv8-a

echo "Build complete. Output: libsfs.so"
