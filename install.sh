#!/bin/bash

cd /tmp
wget http://apt.puppetlabs.com/puppet5-release-$(lsb_release -sc).deb
dpkg -i puppet5-release-$(lsb_release -sc).deb
apt-get update

apt-get -y install puppet-agent

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
fi
      
mkdir -p /etc/facter/facts.d
