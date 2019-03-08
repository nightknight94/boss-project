set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR armv7-a)

set(TOOLCHAIN_PREFIX $ENV{SDK_PATH}/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi- CACHE STRING "")
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)

set(COMPILER_FLAGS " -march=armv7-a -marm -mfpu=neon  -mfloat-abi=hard -mcpu=cortex-a9")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMPILER_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${COMPILER_FLAGS}" CACHE STRING "" FORCE)

set(SYSROOT $ENV{SDK_PATH}/sysroots/cortexa7hf-neon-vfpv4-poky-linux-gnueabi CACHE STRING "")

set(CMAKE_SYSROOT ${SYSROOT})
set(CMAKE_FIND_ROOT_PATH ${SYSROOT})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Not working this way (invalid program interpreter (dynamic linker))
# add_compile_options(
# 	-march=armv7ve
# 	-marm
# 	-mfpu=neon-vfpv4
# 	-mfloat-abi=hard
# 	-mcpu=cortex-a7
# )
