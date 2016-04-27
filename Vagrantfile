# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = "ant-berkshelf"

  config.omnibus.chef_version = '11.16.4'

  config.vm.box = "opscode-centos-6.5-provisionerless"

  config.vm.network :private_network, type: "dhcp"

  config.berkshelf.enabled = true


  config.vm.provision :chef_solo do |chef|
    chef.json = {
    }

    chef.run_list = [
        "recipe[ant::install_source]"
    ]
  end
end
