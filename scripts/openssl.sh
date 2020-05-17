#!/bin/bash
set -e
set -x

cd ..
git clone https://github.com/openssl/openssl.git
cd openssl
git checkout OpenSSL_1_1_1g
./Configure linux-generic64 no-ssl2 no-ssl3 no-shared -static -static-libgcc --prefix=/opt/openssl
make -j12
sudo make install