#!/bin/bash 

cat /root/yjkim/20190626/istio/01.install/istio-1.2.2/samples/sleep/sleep.yaml | istioctl kube-inject -f - | kubectl apply -f -

