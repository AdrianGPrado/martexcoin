#!/bin/bash

__dir__="$(cd "$(dirname "$0")" && pwd)"

echo $__dir__

if [ -n "${MARTEX_QT}" ]; then
echo 'Compile MarteX-Qt.' &&
echo $__dir__ ;
else
echo 'Compile MarteXd.';
echo $__dir__ &&
cd src && \
make -f makefile.unix USE_UPNP=$USE_UPNP \
                      PIE=$PIE && 
                      PIC=$PIC \
strip MarteXd ;
fi