#!/bin/bash 

# 1. example
etcd --name infra0 --initial-advertise-peer-urls http://10.0.1.10:2380 \
  --listen-peer-urls http://10.0.1.10:2380 \
  --listen-client-urls http://10.0.1.10:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://10.0.1.10:2379 \
  --initial-cluster-token etcd-cluster-1 \
  --initial-cluster infra0=http://10.0.1.10:2380,infra1=http://10.0.1.11:2380,infra2=http://10.0.1.12:2380 \
  --initial-cluster-state new

# 2.1 example env from metadata 
COREOS_VAGRANT_VIRTUALBOX_HOSTNAME=core-01
COREOS_VAGRANT_VIRTUALBOX_PRIVATE_IPV4=172.17.8.101
PRIVATE_IPV4=172.17.8.101
HOSTNAME=core-01
ETCD_CLUSTER=core-01=http://172.17.8.101:2380,core-02=http://172.17.8.102:2380,core-03=http://172.17.8.103:2380
ETCD_CLUSTER_NAME=etcd-cluster-1

# 2.2 example with env 
etcd --name ${HOSTNAME} \
  --initial-advertise-peer-urls http://${PRIVATE_IPV4}:2380 \
  --listen-peer-urls http://${PRIVATE_IPV4}:2380 \
  --listen-client-urls http://${PRIVATE_IPV4}:2379,http://127.0.0.1:2379 \
  --advertise-client-urls http://${PRIVATE_IPV4}:2379 \
  --initial-cluster-token ${ETCD_CLUSTER_NAME} \
  --initial-cluster ${ETCD_CLUSTER} \
  --initial-cluster-state ${ETCD_CLUSTER_STATE:="new"}	# set default if exist value 
