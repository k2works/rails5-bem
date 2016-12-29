# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hiroshima-arc/manhattan"

  config.vm.network :forwarded_port, guest:80, host:8888, id:"nginx"
  config.vm.network :forwarded_port, guest:3000, host:3000, id:"rails"
  config.vm.network :forwarded_port, guest:3306, host:3306, id:"mysql"
  config.vm.network :forwarded_port, guest:5432, host:5432, id:"postgresql"
  config.vm.network :private_network, ip:"127.0.0.1"

  config.vm.synced_folder ".", "/vagrant", mount_options: ['dmode=777','fmode=777']

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end
end
