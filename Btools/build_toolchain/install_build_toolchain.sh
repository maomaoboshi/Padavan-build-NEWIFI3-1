#!/bin/sh

:<<EOF

DIR="/opt/rt-n56u/toolchain-mipsel/toolchain-3.4.x"
DL_NAME="mipsel-linux-uclibc.tar.xz"
DL_URL="https://github.com/hanwckf/padavan-toolchain/releases/download/v1.1/$DL_NAME"
#
cd /opt/rt-n56u/toolchain-mipsel
curl -O -L $DL_URL && \
mkdir -p $DIR && \
tar -xvf $DL_NAME -C $DIR

EOF

cd /opt/rt-n56u/toolchain-mipsel
./clean_toolchain
./build_toolchain
