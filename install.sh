#!/bin/bash

cd /tmp
wget -O - https://apt.puppet.com/pubkey.gpg | sudo apt-key add -
wget http://apt.puppetlabs.com/puppet6-release-$(lsb_release -sc).deb
dpkg -i puppet6-release-$(lsb_release -sc).deb
apt-get update

apt-get -y install puppet-agent

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
fi
      
mkdir -p /etc/facter/facts.d
