#!/bin/bash

useradd user -u ${1:-1000}
su - user << EOF
  cd /home/user/
  rm -rf build-win32
  mkdir build-win32
  cd build-win32
  ../client/admin/win/download_runtimes.sh
  cmake -DCMAKE_TOOLCHAIN_FILE=../client/admin/win/Toolchain-mingw32-openSUSE.cmake\
  -DWITH_CRASHREPORTER=OFF \
  -DOEM_THEME_DIR=/home/user/silentdrivetheme \
  -DMIRALL_VERSION_SUFFIX= \
  -DMIRALL_VERSION_BUILD=1 \
  ../client
  make -j4
  make package
  ctest .
EOF
