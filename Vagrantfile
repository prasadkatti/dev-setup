# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  # config.vm.network "forwarded_port", guest: 4000, host: 4000

  # config.vm.synced_folder "mysite/", "/srv/mysite"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "dev-setup"
  end

  config.vm.provision "shell", path: "provision_scripts/setup_machine.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision_scripts/playbook.yml"
  end

end
