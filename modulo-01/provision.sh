#!/usr/bin/env bash
set -x
cd /vagrant/salt/
sudo mkdir -p /srv/salt
sudo cp -r /vagrant/salt/* /srv/salt/
# sudo salt-call --local state.apply -l debug
sudo salt-call --local state.apply