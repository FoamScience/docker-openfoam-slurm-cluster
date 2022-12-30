#!/usr/bin/bash

source /usr/lib/openfoam/openfoam2206/etc/bashrc
echo "Compiling Catch2 v3..."
git clone https://github.com/FoamScience/foamUT /foamUT
cd /foamUT/catch2 || exit
mkdir -p build && cd build
cmake3 -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_PREFIX="$FOAM_USER_LIBBIN"/catch2 ..
make -j"$(nproc)"
make install
rm -rf /foamUT
