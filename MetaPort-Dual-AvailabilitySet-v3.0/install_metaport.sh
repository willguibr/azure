#!/bin/bash

echo "Creating build directory and downloading MetaPort LXD packages"
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh

echo "Initiating MetaPort package installation"
sudo ./build/build_mp.sh
sleep 15

echo "Token Code provided by the Customer during the Wizard configuration"
MP1TokenCode=$1
MP2TokenCode=$2

echo "Initiating Onboarding Process for MetaPort-1"
su mpadmin -c "metaport onboard $MP1TokenCode"

echo "Initiating Onboarding Process for MetaPort-2"
su mpadmin -c "metaport onboard $MP2TokenCode"