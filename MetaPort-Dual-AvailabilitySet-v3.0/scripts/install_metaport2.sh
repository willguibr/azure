#!/bin/bash

# Creating build directory and downloading MetaPort LXD packages
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh

# Initiating MetaPort package installation
sudo ./build/build_mp.sh
sleep 30

# Token Code provided by the Customer during the Wizard configuration
MP2TokenCode=$2

# Initiating Onboarding Process
su mpadmin -c "metaport onboard $MP2TokenCode"