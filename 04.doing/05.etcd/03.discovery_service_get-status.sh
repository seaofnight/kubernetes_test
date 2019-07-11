#!/bin/bash

UUID=f7480931-a34c-4899-aa21-1422f1e21bbb
ETCD_URL=http://172.17.8.101:2379

echo -e " str : curl -X GET ${ETCD_URL}/v2/keys/_etcd/registry/${UUID} "

# print registery etcd info 
curl -X GET ${ETCD_URL}/v2/keys/_etcd/registry/${UUID} | jq
