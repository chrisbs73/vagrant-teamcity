# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  config.vm.define "teamcity" do |tc|
    tc.vm.box = "centos/7"
    tc.vm.hostname = "teamcity"
    tc.vm.network "forwarded_port", guest: 8111, host: 8111
  
    tc.vm.provider "virtualbox" do |v|
      v.name = "teamcity"
      v.memory = 2048
      v.cpus = 2
    end

    tc.vm.provision :shell, path: "tc_bootstrap.sh"

    tc.vm.provision :shell, :inline => "/opt/TeamCity/bin/runAll.sh start", run: "always"
    tc.vm.provision :shell, :inline => "echo \"You can access TeamCity by going to: http://127.0.0.1:8111\"", run: "always"
  end

end
