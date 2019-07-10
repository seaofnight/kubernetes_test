#!/bin/bash

  ETCDCTL_API=3 etcdctl \
  --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/ssl/etcd/ssl/ca.pem \
  --cert=/etc/ssl/etcd/ssl/admin-core-01.pem \
  --key=/etc/ssl/etcd/ssl/admin-core-01-key.pem $@
