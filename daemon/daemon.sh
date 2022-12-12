#!/bin/bash

hosts=remote-hosts

for host in $(cat ${hosts})
do
	hostname=$(echo ${host} | cut -f1 -d ":")
    ip=$(echo ${host} | cut -f2 -d ":")
    port=$(echo ${host} | cut -f3 -d ":")
    password=$(echo ${host} | cut -f4 -d ":")
	expect ./daemon.exp $ip $port $password
done
