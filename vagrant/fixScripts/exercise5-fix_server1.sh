#!/bin/bash
#add fix to exercise5-server1 here

echo "Host 192.168.100.11, server2
    StrictHostKeyChecking no" >> /home/vagrant/.ssh/config

su vagrant -c "ssh-keygen -f /home/vagrant/.ssh/id_rsa -N ''"

#sudo apt-get install sshpass

#sshpass -p vagrant ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.100.11
