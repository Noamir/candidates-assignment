#!/bin/bash
#add fix to exercise6-fix here

array=( $@ )
len=${#array[@]}
folder=${array[$len-1]}
files=${array[@]:0:$len-1}

total_bytes=0


if [ "$HOSTNAME" = "server1" ]; then
    remote_server="server2"
else
    remote_server="server1"
    sshpass_command="sshpass -p vagrant"
fi


for file in $files
do
        ${sshpass_command} scp ${file} vagrant@${remote_server}:${folder}
        file_bytes=$(wc -c ${file} | awk '{print $1}')
        total_bytes="$(($total_bytes + $file_bytes))"
done


echo $total_bytes


