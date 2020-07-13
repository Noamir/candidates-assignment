#!/bin/bash
#add fix to exercise5-server1 here

echo "Host 192.168.100.10 , server1
    StrictHostKeyChecking no" >> /home/vagrant/.ssh/config

#ssh-keygen -f /home/vagrant/.ssh/id_rsa -N ''

sudo apt-get install sshpass

su vagrant -c "sshpass -p vagrant ssh vagrant@192.168.100.10 cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys"

#scp vagrant@server1:/home/vagrant/.ssh/id_rsa.pub /home/vagrant/.ssh/authorized_keys


