#!/usr/bin/env bash

sudo sed -i --follow-symlinks 's/^#PermitRootLogin.*/PermitRootLogin no/g' /etc/ssh/sshd_config