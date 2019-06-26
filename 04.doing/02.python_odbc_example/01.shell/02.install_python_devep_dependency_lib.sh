#!/bin/bash

# python dev lib 
yum install -y python-devel

## required unixodbc-dev
# https://centos.pkgs.org/7/centos-x86_64/unixODBC-devel-2.3.1-11.el7.x86_64.rpm.html
wget http://mirror.centos.org/centos/7/os/x86_64/Packages/unixODBC-devel-2.3.1-11.el7.x86_64.rpm
yum install -y unixODBC-devel-2.3.1-11.el7.x86_64.rpm
