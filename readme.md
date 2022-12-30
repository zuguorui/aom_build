[TOC]

# libaom Android编译脚本-中文

> 这是已经编译好的libaom的Android动态库，有armv7和个arm64。你也可以自行编译。

1. 下载libaom源码：[libaom](https://aomedia.googlesource.com/aom/)。
2. 复制脚本`build_android_aom.sh`到一个文件夹并打开。最好不要和libaom库源码放在同一个地方。
3. 修改`ANDROID_NDK_PATH`为你自己的ndk位置。
4. 修改`LIBAOM_PATH`为你自己的libaom库位置。
5. 运行此脚本。会在该文件夹下产生两个架构的文件夹，并将编译结果存放其中。

更多选项，可参考`$LIBAOM_PATH/build/cmake/toolchains/android.cmake`文件。




# libaom compile scripts for Android - Engligh

> There are shared libraries of libaom on Android platform, both armv7 and arm64 abi. You can also compile the library by yourself.

1. Download libaom source code: [libaom](https://aomedia.googlesource.com/aom/).
2. Copy `build_android_aom.sh` to a directory you want and open this script for edit. It's better to put the script in a different folder to libaom source code.
3. Edit `ANDROID_NDK_PATH` to your own ndk path.
4. Edit `LIBAOM_PATH` to libaom path.
5. Run the script and you will get products in two sub folders named in Android ABI.

You can access more options by referring `$LIBAOM_PATH/build/cmake/toolchains/android.cmake` file.

