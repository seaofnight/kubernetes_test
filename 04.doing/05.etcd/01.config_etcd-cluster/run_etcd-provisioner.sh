#!/bin/bash 

REGISTRY=quay.io/coreos/etcd
# available from v3.2.5
#REGISTRY=gcr.io/etcd-development/etcd
DATA_DIR=/data
NAME=core-01
NODE1=172.17.8.101


docker run -d --rm \
  -p 2379:2379 \
  -p 2380:2380 \
  --volume=${DATA_DIR}:/etcd-data \
  --name etcd ${REGISTRY}:latest \
  /usr/local/bin/etcd \
  --data-dir=/etcd-data --name ${NAME}  \
  --initial-advertise-peer-urls http://${NODE1}:2380 \
  --listen-peer-urls http://0.0.0.0:2380 \
  --advertise-client-urls http://${NODE1}:2379 \
  --listen-client-urls http://0.0.0.0:2379 \
  --initial-cluster ${NAME}=http://${NODE1}:2380
