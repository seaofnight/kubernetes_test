#!/bin/bash

sudo wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo

cp virtualbox.repo /etc/yum.repo.d

yum install -y virtualbox*
