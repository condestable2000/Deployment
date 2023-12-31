#!/bin/bash

echo "Installing NodeJS"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo yum install  -y epel-release
sudo yum install https://rpm.nodesource.com/pub_20.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y
sudo yum install nsolid -y | sudo bash -
sudo yum install -y nodejs
