#!/bin/bash

kubectl -n istio-system logs -l istio-mixer-type=telemetry -c mixer | grep 'www.google.com'
