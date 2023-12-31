#!/bin/bash

# These are the dependencies that both webapp and grading agents need

sudo yum install -y https://repo.ius.io/ius-release-el7.rpm
sudo yum install -y git gcc python-pip python python3-devel wget
sudo pip install --upgrade pip
sudo yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libtidy-5.4.0-1.el7.x86_64.rpm
sudo yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/o/openpgm-5.2.122-2.el7.x86_64.rpm
sudo yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libsodium-1.0.18-1.el7.x86_64.rpm
sudo yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/z/zeromq-4.1.4-6.el7.x86_64.rpm
sudo yum install -y https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/z/zeromq-devel-4.1.4-6.el7.x86_64.rpm
bash "$DEPLOYMENT_HOME/deployment_scripts/install_docker.sh"
