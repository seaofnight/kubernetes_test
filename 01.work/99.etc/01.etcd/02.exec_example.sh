#!/bin/bash
 
sh 03.exec_command.sh get /registry/services/specs/default/kubernetes

sh 03.exec_command.sh get /calico/ipam/v2/assignment/ipv4/block/10.233.0.0-24 | tail -n 1 | jq

