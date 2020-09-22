#!/usr/bin/env bash

cd /tmp
git clone https://github.com/libcsp/libcsp.git
cd libcsp

# TODO: build with --enable-can-socketcan
./waf configure --with-os=posix --prefix=/usr

sudo ./waf build install --install-csp

sudo ln -s /usr/local/lib/libsocketcan.so.2 /usr/lib/libsocketcan.so.2

cd /tmp
rm -rf libcsp