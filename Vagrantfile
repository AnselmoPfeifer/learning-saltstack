# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "public_network", bridge: 'en0: Wi-Fi (AirPort)', auto_config: false

  config.vm.provision "shell", run: "always", inline: "ifconfig enp0s8 192.168.0.100 netmask 255.255.255.0 up"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 256]
    vb.customize ["modifyvm", :id, "--cpus", 1]
    vb.customize ["modifyvm", :id, "--name", "saltstack"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.install_type = "stable"
    salt.install_master = true
    salt.no_minion = true
    salt.verbose = true
    salt.colorize = true
  end
end
