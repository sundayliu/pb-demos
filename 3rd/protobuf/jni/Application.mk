APP_CPPFLAGS += -fexceptions -frtti

APP_STL := gnustl_static

APP_OPTIM:=release
APP_PLATFORM:=android-15
APP_ABI:=armeabi #armeabi-v7a x86  x86_64 arm64-v8a

NDK_TOOLCHAIN_VERSION:=clang3.5