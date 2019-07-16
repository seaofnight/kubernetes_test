#!/bin/bash 

#kubectl get configmap istio -n istio-system -o yaml | grep -o "mode: ALLOW_ANY"
kubectl get configmap istio -n istio-system -o yaml | grep -E "mode: ALLOW_ANY| mode: REGISTRY_ONLY"
