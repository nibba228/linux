cmd_libbb/makedev.o := x86_64-linux-gnu-gcc -Wp,-MD,libbb/.makedev.o.d  -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_TIME_BITS=64 -DBB_VER='"1.37.0"' -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0 -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Oz    -DKBUILD_BASENAME='"makedev"'  -DKBUILD_MODNAME='"makedev"' -c -o libbb/makedev.o libbb/makedev.c

deps_libbb/makedev.o := \
  libbb/makedev.c \
  /usr/x86_64-linux-gnu/include/stdc-predef.h \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/lib/gcc-cross/x86_64-linux-gnu/13/include/limits.h \
  /usr/lib/gcc-cross/x86_64-linux-gnu/13/include/syslimits.h \
  /usr/x86_64-linux-gnu/include/limits.h \
  /usr/x86_64-linux-gnu/include/bits/libc-header-start.h \
  /usr/x86_64-linux-gnu/include/features.h \
  /usr/x86_64-linux-gnu/include/features-time64.h \
  /usr/x86_64-linux-gnu/include/bits/wordsize.h \
  /usr/x86_64-linux-gnu/include/bits/timesize.h \
  /usr/x86_64-linux-gnu/include/sys/cdefs.h \
  /usr/x86_64-linux-gnu/include/bits/long-double.h \
  /usr/x86_64-linux-gnu/include/gnu/stubs.h \
  /usr/x86_64-linux-gnu/include/gnu/stubs-64.h \
  /usr/x86_64-linux-gnu/include/bits/posix1_lim.h \
  /usr/x86_64-linux-gnu/include/bits/local_lim.h \
  /usr/x86_64-linux-gnu/include/linux/limits.h \
  /usr/x86_64-linux-gnu/include/bits/pthread_stack_min-dynamic.h \
  /usr/x86_64-linux-gnu/include/bits/posix2_lim.h \
  /usr/x86_64-linux-gnu/include/bits/xopen_lim.h \
  /usr/x86_64-linux-gnu/include/bits/uio_lim.h \
  /usr/x86_64-linux-gnu/include/byteswap.h \
  /usr/x86_64-linux-gnu/include/bits/byteswap.h \
  /usr/x86_64-linux-gnu/include/bits/types.h \
  /usr/x86_64-linux-gnu/include/bits/typesizes.h \
  /usr/x86_64-linux-gnu/include/bits/time64.h \
  /usr/x86_64-linux-gnu/include/endian.h \
  /usr/x86_64-linux-gnu/include/bits/endian.h \
  /usr/x86_64-linux-gnu/include/bits/endianness.h \
  /usr/x86_64-linux-gnu/include/bits/uintn-identity.h \
  /usr/lib/gcc-cross/x86_64-linux-gnu/13/include/stdint.h \
  /usr/x86_64-linux-gnu/include/stdint.h \
  /usr/x86_64-linux-gnu/include/bits/wchar.h \
  /usr/x86_64-linux-gnu/include/bits/stdint-intn.h \
  /usr/x86_64-linux-gnu/include/bits/stdint-uintn.h \
  /usr/x86_64-linux-gnu/include/bits/stdint-least.h \
  /usr/lib/gcc-cross/x86_64-linux-gnu/13/include/stdbool.h \
  /usr/x86_64-linux-gnu/include/unistd.h \
  /usr/x86_64-linux-gnu/include/bits/posix_opt.h \
  /usr/x86_64-linux-gnu/include/bits/environments.h \
  /usr/lib/gcc-cross/x86_64-linux-gnu/13/include/stddef.h \
  /usr/x86_64-linux-gnu/include/bits/confname.h \
  /usr/x86_64-linux-gnu/include/bits/getopt_posix.h \
  /usr/x86_64-linux-gnu/include/bits/getopt_core.h \
  /usr/x86_64-linux-gnu/include/bits/unistd.h \
  /usr/x86_64-linux-gnu/include/bits/unistd-decl.h \
  /usr/x86_64-linux-gnu/include/bits/unistd_ext.h \
  /usr/x86_64-linux-gnu/include/linux/close_range.h \
  /usr/x86_64-linux-gnu/include/sys/sysmacros.h \
  /usr/x86_64-linux-gnu/include/bits/sysmacros.h \

libbb/makedev.o: $(deps_libbb/makedev.o)

$(deps_libbb/makedev.o):
