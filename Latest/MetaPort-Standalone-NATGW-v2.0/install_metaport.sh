#!/bin/bash

# Creating build directory and downloading MetaPort LXD packages
mkdir build
wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
chmod +x build/build_mp.sh

./build/build_mp.sh
sleep 1m

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Initiating Onboarding Process
metaport onboard $metaTokenCode