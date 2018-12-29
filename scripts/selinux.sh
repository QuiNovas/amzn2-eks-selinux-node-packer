#!/usr/bin/env bash

sudo yum -y install selinux-policy-devel

sudo ln -sf /etc/selinux/config /etc/sysconfig/selinux
sudo sed -i --follow-symlinks 's/^SELINUX=.*/SELINUX=enforcing/g' /etc/selinux/config

cd /tmp/modules
make -f /usr/share/selinux/devel/Makefile quinovas-selinux.pp
sudo semodule -i quinovas-selinux.pp
