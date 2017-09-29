#!/bin/bash

__dir__="$(cd "$(dirname "$0")" && pwd)"

echo $__dir__

if $MARTEX_QT ; then
echo 'Compile MarteX-Qt.';
echo $__dir__
else
echo 'Compile MarteXd.';
echo $__dir__
fi