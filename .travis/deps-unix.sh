#!/bin/bash


# BerkeleyDB is required for the wallet. db4.8 packages are available
# here: https://launchpad.net/~bitcoin/+archive/bitcoin
sudo add-apt-repository ppa:bitcoin/bitcoin

# Update distribution
sudo apt-get update

# Install base packages
echo 'Installing MarteXd dependencies'
sudo apt-get install build-essential \
                     libtool \
                     automake \
                     autotools-dev \
                     autoconf \
                     pkg-config \
                     libssl-dev \
                     libgmp3-dev \
                     libevent-dev \
                     bsdmainutils

# Install BerkleyDB4.8
sudo apt-get install libdb4.8-dev \
                     libdb4.8++-dev

sudo apt-get install libminiupnpc-dev

if $MARTEX_QT ; then
echo 'Installing MarteX-Qt dependencies'
sudo apt-get install libqt5gui5 \
                     libqt5core5a \
                     libqt5dbus5 \
                     qttools5-dev \
                     qttools5-dev-tools \
                     libprotobuf-dev \
                     protobuf-compiler

# libqrencode (optional) can be installed with:
if $MARTEX_QT_QR; then
echo 'Installing optional dependenci QR-code'
sudo apt-get install libqrencode-dev
fi

fi