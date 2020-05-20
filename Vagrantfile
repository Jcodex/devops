Vagrant.configure("2") do |config|

  N = 3
  (1..N).each do |server_id|
    config.vm.define "server#{server_id}" do |server|
    server.vm.box = "hashicorp/bionic64"
    server.vm.hostname = "server#{server_id}"
    server.vm.network "private_network", ip: "192.168.3.#{1+server_id}"
      if server_id == 1
        server.vm.network :forwarded_port, host: 8080, guest: 80
      end
##########################
      if server_id == N
        server.vm.provision :ansible do |ansible|
          ansible.limit = "all"
          ansible.verbose = "v"
          ansible.playbook = "playbook.yml"
        end
      end
    end
  end
end

