#!/usr/bin/env bash
set -x

if [ ! -f /etc/salt/minion ]; then
sudo -i << EOF
    add-apt-repository -y ppa:saltstack/salt
    apt-get update
    apt-get install salt-minion -y

    echo "192.168.0.100     salt.anselmopfeifer.com     salt" >> /etc/hosts
EOF
fi