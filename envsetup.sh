#!/bin/sh

if [ `uname` = "Darwin" ] ; then
   export DYLD_LIBRARY_PATH=../../depend/osg/lib:$DYLD_LIBRARY_PATH
   export BIN_HOME=../../bin/macos-debug ;
elif [ `uname` = "Linux" ] ; then
   export BIN_HOME=../../bin/linux-debug ;
elif [ `uname -o` = "Cygwin" ] ; then
   export BIN_HOME=../../bin/win32-debug ;
else
   echo "Unsupported platform: " `uname`
   exit -1 ;
fi

