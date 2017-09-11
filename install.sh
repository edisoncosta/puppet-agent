#!/bin/bash

cd /tmp
wget http://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb
dpkg -i puppetlabs-release-pc1-jessie.deb
apt-get update

apt-get -y install puppet-agent

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
fi
      
mkdir -p /etc/facter/facts.d
