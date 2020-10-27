#!/bin/bash

# Creating build directory and downloading MetaPort LXD packages
sudo apt-get -qq -y update
sudo apt-get -q -y install software-properties-common
# sudo apt-get -q -y python3-distutils
sudo apt-get -q -y install python3-pip
# sudo apt-get -q -y build-essential
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh

sudo ./build/build_mp.sh
sleep 10

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Initiating Onboarding Process
su mpadmin -c "metaport onboard $metaTokenCode"