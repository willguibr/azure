#!/bin/sh -e
sleep 15

# download
wget -q -O/tmp/build_mp.sh https://s3.amazonaws.com/public.nsof.io/lxd/metaport-install.sh
chmod +x /tmp/build_mp.sh

# install (as ubuntu)
sudo -u ubuntu -i sh -c 'cd /tmp && /tmp/build_mp.sh'
sleep 15

metaTokenCode=$1

# onboard (as mpadmin)
sudo -u mpadmin -i metaport onboard $metaTokenCode > metaport_onboard.txt