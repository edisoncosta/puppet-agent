#!/bin/bash

cd /tmp
wget http://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb
dpkg -i puppetlabs-release-pc1-jessie.deb
apt-get update

apt-get -y install puppet-agent

PATH=/opt/puppetlabs/bin:/usr/local/bin:$PATH
      
echo "PATH=$PATH" >>/etc/bash.bashrc
echo "export PATH" >>/etc/bash.bashrc
export PATH
      
mkdir -p /etc/facter/facts.d
