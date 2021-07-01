#!/bin/bash


for host in $(cat remote-hosts)
do
	hostname=$(echo ${host} | cut -f1 -d ":")
	ip=$(echo ${host} | cut -f2 -d ":")
	port=$(echo ${host} | cut -f3 -d ":")
	password=$(echo ${host} | cut -f4 -d ":")
	ssh-keygen -t ecdsa -P "" -f ~/.ssh/keys/${hostname}-id_ecdsa
	#arg=$(echo -i ~/.ssh/keys/${hostname}-id_ecdsa.pub -p ${port} -o StrickHostKeyChecking=no root@${ip})
	#echo sshpass -p ${password} ssh-copy-id '"'${arg}'"' >> tmp.sh
	#sshpass -p ${password} ssh-copy-id -i ~/.ssh/keys/${hostname}-id_ecdsa.pub -o StrickHostKeyChecking=no root@${ip}
	ssh-copy-id -i ~/.ssh/keys/${hostname}-id_ecdsa.pub root@${ip}
done
#sh tmp.sh
#rm -f tmp.sh
