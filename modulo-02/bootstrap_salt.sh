#!/usr/bin/env bash
set -x
sudo apt-get update

if [ ! -d /etc/salt/ ]; then
sudo -i << EOF
    wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
    echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >> /etc/apt/sources.list
    apt-get install salt-master salt-minion -y
    salt-key -a salt.anselmopfeifer.com -y
    salt '*' cmd.run 'ifconfig'
EOF
fi