#!/bin/bash

UUID=cbda64c6-10c6-4f65-9437-b3c6b638c2a2
ETCD_URL=http://172.17.8.101:2379
#ETCD_URI="v2/keys/_etcd/registry/${UUID}/etcd-discovery?prevExist=false -d value=\"etcd-discovery=172.17.8.101:2379\""
ETCD_URI="v2/keys/_etcd/registry/${UUID}/etcd-member1?prevExist=false -d value=\"etcd-member1=172.17.8.101:12379\""
METHOD=PUT

echo -e " str : curl -X ${METHOD} ${ETCD_URL}/${ETCD_URI}"

# print registery etcd info 
curl -X ${METHOD} ${ETCD_URL}/${ETCD_URI} | jq
