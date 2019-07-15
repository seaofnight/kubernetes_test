#!/bin/bash 

export ETCDCTL_API=3
HOST_1=172.17.8.101
HOST_2=172.17.8.102
HOST_3=172.17.8.103
ENDPOINTS=$HOST_1:2379,$HOST_2:2379,$HOST_3:2379

etcdctl --endpoints=$ENDPOINTS put foo "Hello World!"

# demo 
## https://etcd.io/docs/v3.3.12/demo/
