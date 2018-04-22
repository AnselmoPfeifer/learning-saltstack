#!/usr/bin/env bash
set -x

if [ ! -d /etc/salt ]; then
    sudo add-apt-repository -y ppa:saltstack/salt
    sudo apt-get update
    sudo apt-get install salt-minion -y
fi
sudo -i << EOF
    echo "192.168.0.100     salt.anselmopfeifer.com     salt" >> /etc/hosts
EOF