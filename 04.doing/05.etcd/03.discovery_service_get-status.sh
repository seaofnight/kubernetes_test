#!/bin/bash

UUID=cbda64c6-10c6-4f65-9437-b3c6b638c2a2
ETCD_URL=http://172.17.8.101:2379

echo -e " str : curl -X GET ${ETCD_URL}/v2/keys/_etcd/registry/${UUID} "

# print registery etcd info 
curl -X GET ${ETCD_URL}/v2/keys/_etcd/registry/${UUID} | jq
