#!/bin/bash


ANDROID_NDK_PATH=/Users/zuguorui/Library/Android/sdk/ndk/21.4.7075529
LIBAOM_PATH=/Users/zuguorui/work_space/libaom/
ANDROID_CMAKE_PATH=$LIBAOM_PATH/build/cmake/toolchains/android.cmake

MAKE_BUILD_PATH=$(pwd)/make_build/

INSTALL_PREFIX=$(pwd)/android

rm -r $INSTALL_PREFIX

function build
{

rm -r $MAKE_BUILD_PATH
mkdir -p $MAKE_BUILD_PATH
cd $MAKE_BUILD_PATH

cmake $LIBAOM_PATH -DCMAKE_TOOLCHAIN_FILE=$ANDROID_CMAKE_PATH \
-DANDROID_ABI=$ABI \
-DAOM_ANDROID_NDK_PATH=$ANDROID_NDK_PATH \
-DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX/$CPU \
-DBUILD_SHARED_LIBS=1

make -j4
make install

cd ../
}

# armv7
CPU=armv7-a
ABI=armeabi-v7a
build

# armv8
CPU=armv8-a
ABI=arm64-v8a
build






