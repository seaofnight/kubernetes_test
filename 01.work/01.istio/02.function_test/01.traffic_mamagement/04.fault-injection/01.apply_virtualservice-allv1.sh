#!/bin/bash

kubectl apply -f ../istio/samples/bookinfo/platform/kube/bookinfo.yaml
kubectl apply -f ../istio/samples/bookinfo/networking/bookinfo-gateway.yaml
kubectl apply -f ../istio/samples/bookinfo/networking/virtual-service-all-v1.yaml
kubectl apply -f ../istio/samples/bookinfo/networking/destination-rule-all.yaml
kubectl apply -f ../istio/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml
