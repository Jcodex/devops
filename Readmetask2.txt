Vagrant up: 2 machines, vm1 and vm2, their dns names server1 and server2
git is installed on 1 machine and switches to the task2 branch in which test.txt lies
debug displays the contents of this file while the first machine is provisioned

After that, ansible generates the ssh keys and copies them to the folder with the vagrant file
the public key is added to the authorized first machine

Then the second playbook is started, which will configure 2VM

The keys will be copied and the public key will be added to the authorized second machine

ssh connections can be carried out from both machines on top of each other with the commands ssh vagrant @ server1 and ssh vagrant @ server2

