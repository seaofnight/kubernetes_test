#!/bin/bash 

openssl passwd -1 > passwd.txt

USER=yjkim
PASSWD=$(<passwd.txt)
echo $PASSWD

cat <<EOF>> cloud-config.yaml 
users:
- name: $USER
  passwd: $PASSWD
  groups:
    - sudo
    - docker
EOF

# d : disk device 
# C : channel {stable, alpha, beta}
# c : config file 
sudo coreos-install -d /dev/sda -C stable -c cloud-config.yaml
