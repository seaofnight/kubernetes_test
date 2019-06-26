#!/bin/bash

cd skaffold/examples/getting-started

## docker auth config 
# mkdir -p ~/.docker
#cat << EOF >> ~/.docker/config.json
#{
#  "auths":{}
#}
#EOF
# docker login required 
# docker login --username yjkim1@ntels.com --password {passwordstr}


skaffold dev --default-repo seaofnight
