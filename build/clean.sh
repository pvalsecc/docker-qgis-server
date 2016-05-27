#!/bin/bash
set -e

apt-get remove -y --purge krb5-multidev build-essential bison cmake cpp cpp-4.9 g++ g++-4.9 gcc gcc-4.9 flex libclang1-3.5 git
apt-get autoremove -y
dpkg --purge `dpkg -l "*-dev" | grep -v -E "dpkg-dev|libgcc-5-dev" | sed -ne 's/ii  \(.*-dev\(:amd64\)\?\) .*/\1/p'`

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
rm -rf /build
