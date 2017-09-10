#!/bin/bash

cd /tmp
wget https://apt.puppetlabs.com/puppet5-release-jessie.deb
sudo dpkg -i puppet5-release-jessie.deb
sudo apt-get update

apt-get -y install puppet-agent

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
fi
      
mkdir -p /etc/facter/facts.d
