#!/bin/bash 

# export SOURCE_POD=$(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name})

echo $(kubectl get pod -l app=sleep -o jsonpath={.items..metadata.name})
