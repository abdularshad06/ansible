# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "ansible-controller" do |vm1|
    vm1.vm.hostname = "ansible-controller"
    vm1.vm.box = "centos/8"
    vm1.vm.network "private_network", ip: "192.168.30.10"
    vm1.vm.network "public_network"
    vm1.ssh.insert_key = false
    vm1.vm.synced_folder "./vagrant_data/", "/data"
    
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "ansible-controller"
      vb.gui = true
      vb.memory = "3072"
    end

    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
        echo "Hello from the CentOS VM"
    SHELL
  end

  config.vm.define "webserver1" do |vm2|
    vm2.vm.hostname = "webserver1"
    vm2.vm.box = "centos/8"
    vm2.vm.network "private_network", ip: "192.168.30.11"
    vm2.vm.network "public_network"
    vm2.ssh.insert_key = false
    
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "webserver1"
      vb.gui = true
      vb.memory = "1024"
    end

    vm2.vm.provision "shell", run: "always", inline: <<-SHELL
        echo "Hello from the CentOS VM"
    SHELL
  end

  config.vm.define "webserver2" do |vm3|
    vm3.vm.hostname = "webserver2"
    vm3.vm.box = "centos/8"
    vm3.vm.network "private_network", ip: "192.168.30.12"
    vm3.vm.network "public_network"
    vm3.ssh.insert_key = false
    
    vm3.vm.provider "virtualbox" do |vb|
      vb.name = "wwebserver2"
      vb.gui = true
      vb.memory = "1024"
    end

    vm3.vm.provision "shell", run: "always", inline: <<-SHELL
         echo "Hello from the CentOS VM"
    SHELL
  end

  config.vm.define "dbserver1" do |vm4|
    vm4.vm.hostname = "dbserver1"
    vm4.vm.box = "centos/8"
    vm4.vm.network "private_network", ip: "192.168.30.13"
    vm4.vm.network "public_network"
    
    vm4.ssh.insert_key = false
    
    vm4.vm.provider "virtualbox" do |vb|
      vb.name = "dbserver1"
      vb.gui = true
      vb.memory = "1024"
    end

    vm4.vm.provision "shell", run: "always", inline: <<-SHELL
         echo "Hello from the CentOS VM"
    SHELL
  end

  config.vm.define "dbserver2" do |vm5|
    vm5.vm.hostname = "dbserver2"
    vm5.vm.box = "centos/8"
    vm5.vm.network "private_network", ip: "192.168.30.14"
    vm5.vm.network "public_network"
    vm5.ssh.insert_key = false
    
    vm5.vm.provider "virtualbox" do |vb|
      vb.name = "sqlserver2"
      vb.gui = true
      vb.memory = "1024"
    end

    vm5.vm.provision "shell", run: "always", inline: <<-SHELL
         echo "Hello from the CentOS VM"
    SHELL
  end

end
