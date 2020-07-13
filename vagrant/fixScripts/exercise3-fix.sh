#!/bin/bash
#add fix to exercise3 here
sed -i ':a;N;$!ba; s/deny/Allow/2' /etc/apache2/sites-available/default
sudo service apache2 restart
