#!/bin/bash 

# etcd systemd example 
    - name: etcd-member.service
      command: start
      drop-ins:
        - name: 10-etcd.conf
          content: |
            [Unit]
            Requires=coreos-metadata.service
            After=coreos-metadata.service

            [Service]
            EnvironmentFile=/run/metadata/coreos
            Environment="ETCD_OPTS=--name \"core-01\" \
              --initial-advertise-peer-urls=http://172.17.8.101:2380 \
              --listen-peer-urls=http://172.17.8.101:2380 \
              --listen-client-urls=http://172.17.8.101:2379,http://127.0.0.1:2379 \
              --advertise-client-urls=http://172.17.8.101:2379 \
              --discovery=https://discovery.etcd.io/cd6d34adf839792e0008f65f65ca5f33 "
            Environment="ETCD_IMAGE_TAG=v3.2.9"

