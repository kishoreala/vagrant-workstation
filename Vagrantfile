# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define :windows do |windows|
  windows.vm.box = "vagrant-win2012r2"
  windows.vm.communicator = 'winrm'
  windows.vm.boot_timeout = 600
  windows.vm.hostname = 'vagrant-win2012r2'
  windows.vm.network :private_network, :auto_network => true
  windows.vm.network :forwarded_port, host: 3389, guest: 3389, auto_correct: true
  windows.vm.provision :puppet do |puppet|
    puppet.environment = "development"
    puppet.environment_path = "."
    puppet.hiera_config_path = "hiera.yaml"
    puppet.working_directory = "/tmp/vagrant-puppet/environments"
    puppet.options = "--verbose"
  end

  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = 2048
     vb.cpus = 2
   end
end

config.vm.define :centos do |centos|
centos.vm.box = "vagrant-centos7"
centos.vm.boot_timeout = 600
centos.vm.hostname = 'vagrant-centos7'
centos.vm.network :private_network, :auto_network => true
centos.vm.provision :shell, path: "scripts/puppet.sh"
centos.vm.provision :shell, path: "scripts/environment.sh"
centos.vm.provision :puppet do |puppet|
  puppet.binary_path = '/opt/puppetlabs/bin'
  puppet.environment = "development"
  puppet.environment_path = "."
  puppet.hiera_config_path = "hiera.yaml"
  puppet.working_directory = "/tmp/vagrant-puppet/environments"
  puppet.options = "--verbose"
end

  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = 1024
     vb.cpus = 2
   end
end
end
