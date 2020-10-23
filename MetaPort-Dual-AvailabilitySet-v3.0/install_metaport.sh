#!/bin/bash

# Creating build directory and downloading MetaPort LXD packages
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh

# Initiating MetaPort package installation
sudo ./build/build_mp.sh
sleep 15

# Token Code provided by the Customer during the Wizard configuration
MP1TokenCode=$1
MP2TokenCode=$2

# Initiating Onboarding Process for MetaPort-1
su mpadmin -c "metaport onboard $MP1TokenCode"

# Initiating Onboarding Process for MetaPort-2
su mpadmin -c "metaport onboard $MP2TokenCode"