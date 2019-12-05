#!/bin/bash

master=$(pwd)

sh yumConfig.sh
cd $master/sl_install_golang_dev_env
sh install.sh
cd $master
sh vimConfig.sh
