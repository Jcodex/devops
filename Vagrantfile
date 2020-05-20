Vagrant.configure("2") do |config|
 
  config.vm.box = "hashicorp/bionic64"
  config.vm.define "vm1" do |vm1|
  config.vm.hostname = "server1"
  vm1.vm.network "private_network", ip: "192.168.3.2"
    vm1.vm.provision "ansible" do |ansible2|
    ansible2.verbose = "v"
    ansible2.playbook = "playbook1.yml"
    end
  end
#######################################
 config.vm.box = "hashicorp/bionic64"
  config.vm.define "vm2" do |vm2|
  config.vm.hostname = "server2"
  vm2.vm.network "private_network", ip: "192.168.3.3"
    vm2.vm.provision "ansible" do |ansible1|
    ansible1.verbose = "v"
    ansible1.playbook = "playbook2.yml"
    end
  end
#  config.vm.define "vm2" do |vm2|
#    config2.vm.provision "ansible" do |ansible3|
#    ansible3.verbose = "v"
#    ansible3.playbook = "playbook3.yml"
#    end
#  end
end
