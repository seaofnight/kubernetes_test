#!/bin/bash 

export SOURCE_POD=$(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name})
kubectl logs $SOURCE_POD -c istio-proxy | tail
