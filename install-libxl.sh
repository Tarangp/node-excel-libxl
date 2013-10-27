#!/bin/sh

if [ ! -d deps/libxl ] ; then
  mkdir deps
  cd deps
  wget http://www.libxl.com/download/libxl-mac.tar.gz
  tar zxf libxl.tar.gz
  rm -rf libxl.tar.gz
  mv libxl* libxl
  cd ..
  
  sudo cp deps/libxl/lib/libxl.dylib /usr/lib
fi
