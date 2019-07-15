#!/bin/bash 

# example member name, get member exampel
## FAILED_MEMBER=$(journalctl -t etcd-wrapper | tail -3 | grep raft | awk '{print $11}' | uniq)
## echo -e " remove this member : ${FAILED_MEMBER} "

etcdctl member remove ${FAILED_MEMBER}
