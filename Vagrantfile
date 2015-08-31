# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision "shell", path: "bootstrap.sh"
  #config.vm.provision "shell", path: "bootstrap_jenkins.sh"
  config.vm.provision "shell", path: "bootstrap_bash.sh", privileged: false
  config.vm.provision "shell", path: "bootstrap_vim.sh", privileged: false
  config.vm.box = "ubuntu/trusty32"
  config.vm.hostname = "ubuntu"
  config.vm.network "forwarded_port", guest: 80,   host: 8888
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 5000, host: 5000
end
