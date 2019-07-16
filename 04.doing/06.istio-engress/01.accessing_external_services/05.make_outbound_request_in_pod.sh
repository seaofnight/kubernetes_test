#!/bin/bash

export SOURCE_POD=$(kubectl -n default get pod -l app=sleep -o jsonpath={.items..metadata.name})

kubectl -n default exec -it $SOURCE_POD -c sleep -- curl -I https://www.google.com | grep  "HTTP/"; kubectl -n default exec -it $SOURCE_POD -c sleep -- curl -I https://edition.cnn.com | grep "HTTP/"
