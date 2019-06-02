#!/bin/bash

yum install https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm -y
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum install puppet -y
mkdir -p /etc/puppetlabs/facter/facts.d
echo role=postgres | tee -a /etc/puppetlabs/facter/facts.d/role.txt

/opt/puppetlabs/bin/puppet config set server plsyslx-prod-puppetserver-vm1.jyszsjohf2xelnmpi2edktehnf.ax.internal.cloudapp.net --section=main

/opt/puppetlabs/bin/puppet agent --test --environment=production

exit 0
