#!/bin/bash 

# vagrant default path 
# see https://coreos.com/os/docs/latest/cloud-config-locations.html
sudo coreos-cloudinit --from-file=/var/lib/coreos-vagrant/vagrantfile-user-data
