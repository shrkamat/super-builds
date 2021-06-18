#!/bin/bash

CMAKE=/ws/skamath/del/cmake-3.19.4-Linux-x86_64/bin/cmake

mkdir -p build
(cd build && $CMAKE -DCMAKE_INSTALL_PREFIX=$PWD/../out -DCMAKE_C_COMPILER=/ws/skamath/.sroot/bin/gcc -DCMAKE_CXX_COMPILER=/ws/skamath/.sroot/bin/g++ .. && make VERBOSE=1)
