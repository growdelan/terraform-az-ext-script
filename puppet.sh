#!/bin/bash

yum install https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm -y
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum -y install puppet-agent git puppet-bolt
mkdir -p /etc/puppetlabs/facter/facts.d

exit 0
