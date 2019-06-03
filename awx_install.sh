#!/bin/bash

yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
systemctl enable docker
systemctl start docker
yum install python-pip ansible -y
pip install docker
pip install docker-compose
git clone https://github.com/ansible/awx.git
cd awx/installer/
ansible-playbook -i inventory install.yml

exit 0
