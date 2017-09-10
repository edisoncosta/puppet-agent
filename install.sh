#!/bin/bash

cd /tmp
wget --inet4-only https://apt.puppetlabs.com/puppet5-release-jessie.deb
sudo dpkg -i puppet5-release-jessie.deb
sudo apt-get -o Acquire::ForceIPv4=true update

apt-get -y install puppet-agent

if ! echo $PATH | grep -q /opt/puppetlabs/bin ; then
  export PATH=$PATH:/opt/puppetlabs/bin
fi
      
mkdir -p /etc/facter/facts.d
