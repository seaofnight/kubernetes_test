#!/bin/bash

UUID=$(uuidgen)
CLUSTER_SIZE=3
ETCD_URL=http://172.17.8.101:2379

echo -e "str : curl -X PUT ${ETCD_URL}/v2/keys/_etcd/registry/${UUID}/_config/size -d value=${CLUSTER_SIZE}  " 

curl -X PUT ${ETCD_URL}/v2/keys/_etcd/registry/${UUID}/_config/size -d value=${CLUSTER_SIZE} | jq
