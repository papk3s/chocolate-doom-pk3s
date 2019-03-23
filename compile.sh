#!/bin/sh
PATH=/opt/rs97-toolchain/bin:$PATH
#./autogen.sh
./configure --host=mipsel-linux SDL_CONFIG="/opt/rs97-toolchain/mipsel-buildroot-linux-musl/sysroot/usr/bin/sdl-config" \
CFLAGS="-Ofast -fdata-sections -ffunction-sections -mno-fp-exceptions -mno-check-zero-division -mframe-header-opt -fno-common -mips32 -mhard-float -DPAPK3S -DUSE_VIRTUALKEYBOARD -DUSE_KEYCOMBOS -DNO_SYSIO -I/opt/rs97-toolchain/mipsel-buildroot-linux-musl/sysroot/usr/include/SDL" \
LDFLAGS="-no-pie -Wl,--as-needed -Wl,--gc-sections -s" 

make clean
make
