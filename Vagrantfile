# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  config.vm.forward_port 1080, 1080
  config.vm.forward_port 1081, 1081
  config.vm.forward_port 1180, 1180

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks', 'site-cookbooks']

    chef.add_recipe "nodejs"
    chef.add_recipe "mongodb-debs"
    chef.add_recipe "cube"
    chef.json = {
      "nodejs" => {
        "version" => "0.8.1"
      },
      "cube" => {
        "path" => "/vagrant"
      },
      "user" => {
        "name" => "vagrant"
      }
    }
  end
end
