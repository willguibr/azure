#!/bin/bash
sleep 30
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh
sudo ./build/build_mp.sh
sleep 1m
metaTokenCode=$1
su mpadmin -c "metaport onboard $metaTokenCode"