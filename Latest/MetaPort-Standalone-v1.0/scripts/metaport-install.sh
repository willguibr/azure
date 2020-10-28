#!/bin/bash
sleep 30
mkdir build
wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
chmod +x build/build_mp.sh
./build/build_mp.sh
sleep 15