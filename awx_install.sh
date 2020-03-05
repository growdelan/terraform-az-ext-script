#!/bin/bash

yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
yum install python-pip ansible wget git -y
wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
yum install -y python-pip gcc python-devel
pip install --upgrade pip
pip install docker
pip install docker-compose
systemctl enable docker
systemctl start docker
git clone https://github.com/ansible/awx.git
cd awx/installer/
ansible-playbook -i inventory install.yml

exit 0
