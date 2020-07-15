#!/bin/sh

set -e -x

cp ../CI/CMakeLists.txt .
rm -rf build
mkdir -p build
cd build
cmake -DOpenCV_DIR=$OPENCV_DIR ../
make
cd ..
rm -rf build CMakeLists.txt
