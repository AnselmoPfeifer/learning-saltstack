#!/usr/bin/env bash
set -x

if [ ! -d /etc/salt/master.d ]; then
sudo -i << EOF
    add-apt-repository -y ppa:saltstack/salt
    apt-get update
    apt-get install salt-master -y
    apt-get install salt-minion -y

    echo "192.168.0.101     minion.anselmopfeifer.com   minion" >> /etc/hosts
EOF
fi

sudo salt-key -L
sudo salt-key -A -y
sudo salt '*' test.ping