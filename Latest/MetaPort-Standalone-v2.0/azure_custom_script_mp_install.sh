#!/bin/sh -e
sleep 15

# Download the latest MetaPort package(s)
wget -q -O/tmp/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
chmod +x /tmp/build_mp.sh

# Initiate MetaPort Install (as ubuntu)
sudo -u ubuntu -i sh -c 'cd /tmp && /tmp/build_mp.sh'
sleep 15

# Token Code provided by the Customer during the Wizard configuration
metaTokenCode=$1

# Starting Onboard process (as mpadmin)
sudo -u mpadmin -i metaport onboard $metaTokenCode > metaport_onboard.txt