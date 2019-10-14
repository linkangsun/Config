#!/bin/sh

curl -O http://mirrors.163.com/.help/CentOS7-Base-163.repo

cp CentOS7-Base-163.repo /etc/yum.repos.d/
rm -rf CentOS7-Base-163.repo
cd /etc/yum.repos.d/
mv CentOS-Base.repo CentOS-Base.repo.bak
mv CentOS7-Base-163.repo CentOS-Base.repo
  
yum clean all
yum makecache
yum update

