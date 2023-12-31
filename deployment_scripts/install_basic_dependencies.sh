#!/bin/bash

# These are the dependencies that both webapp and grading agents need

sudo yum install -y https://repo.ius.io/ius-release-el7.rpm
sudo yum install -y git gcc python-pip python python3-devel zeromq-devel wget
sudo pip install --upgrade pip
wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libtidy-5.4.0-1.el7.x86_64.rpm
rpm -Uvh libtidy-5.4.0-1.el7.x86_64.rpm
bash "$DEPLOYMENT_HOME/deployment_scripts/install_docker.sh"
