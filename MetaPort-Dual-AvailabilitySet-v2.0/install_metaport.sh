#!/bin/bash
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh
sudo ./build/build_mp.sh
sleep 20
MP1TokenCode=$1
MP2TokenCode=$1
su mpadmin -c "metaport onboard $MP1TokenCode"
su mpadmin -c "metaport onboard $MP2TokenCode"