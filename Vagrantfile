# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision "shell", path: "vagrant_setup/bootstrap.sh"
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_apache.sh"
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_jenkins.sh"
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_bash.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_vim.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_git.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_npm.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_redis.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_cdev.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_net.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_setup/bootstrap_last.sh"
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "trusty"
  config.vm.network "forwarded_port", guest: 80,   host: 8888
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 5001, host: 5001
end
