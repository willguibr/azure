#!/bin/bash

# Downloading MetaPort Software
mkdir build
wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
chmod +x build/build_mp.sh

# Starting MetaPort Software Installation
./build/build_mp.sh
sleep 10

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Initiating Onboarding Process
su mpadmin -c "metaport onboard $metaTokenCode"