#!/bin/bash
#ABI=armaebi-v7a
ABI=x86
#ABI=arm64-v8a
#ABI=x86_64
ANDROID_NDK=/home/nikolay/Android/Sdk/ndk/21.1.6352462
TOOL_CHAIN=/home/nikolay/Android/Sdk/ndk/21.1.6352462/build/cmake/android.toolchain.cmake
CMAKE=/home/nikolay/Android/Sdk/cmake/3.10.2.4988404/bin/cmake
mkdir -p ${ABI}
cd ${ABI}
/home/nikolay/Android/Sdk/cmake/3.10.2.4988404/bin/cmake ../../spdlog -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 -DANROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN}
/home/nikolay/Android/Sdk/cmake/3.10.2.4988404/bin/cmake --build .sss
