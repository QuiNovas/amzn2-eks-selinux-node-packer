#!/usr/bin/env bash

# Gotta remove this or yum update won't work
sudo yum install -y epel-release 
sudo yum install -y python-pip
sudo pip uninstall -y urllib3