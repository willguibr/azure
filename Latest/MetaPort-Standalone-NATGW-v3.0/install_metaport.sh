#!/bin/bash

# Creating build directory and downloading MetaPort LXD packages
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -qq -y update
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -q -y install software-properties-common
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -q -y install python3-pip
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y python3-wheel
export DEBIAN_FRONTEND=noninteractive
pip3 install wheel
sudo ex +"%s@DPkg@//DPkg" -cwq /etc/apt/apt.conf.d/70debconf
sudo dpkg-reconfigure debconf -f noninteractive -p critical
sudo mkdir build
sudo wget -q -Obuild/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
sudo chmod +x build/build_mp.sh

# Starting MetaPort Software Installation
export DEBIAN_FRONTEND=noninteractive
sudo ./build/build_mp.sh
sleep 10

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Initiating Onboarding Process
su mpadmin -c "metaport onboard $metaTokenCode"