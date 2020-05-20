Vagrant.configure("2") do |config|
  
  config.vm.box = "minimal/centos7"
  config.vm.box_version = "7.0"
  config.vm.define "vm1" do |vm1|
  vm1.vm.network "private_network", ip: "192.168.3.2"
  end

  config.vm.box = "minimal/centos7"
  config.vm.box_version = "7.0"
  config.vm.define "vm2" do |vm2|
  vm2.vm.network "private_network", ip: "192.168.3.3"
  end

  config.vm.box = "minimal/centos7"
  config.vm.box_version = "7.0"
  config.vm.define "vm3" do |vm3|
  vm3.vm.network "private_network", ip: "192.168.3.4"
  end

  config.vm.box = "minimal/centos7"
  config.vm.box_version = "7.0"
  config.vm.define "add" do |add|
  add.vm.network "private_network", ip: "192.168.3.5"
  end
end