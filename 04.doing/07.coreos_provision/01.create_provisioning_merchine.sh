#!/bin/bash 

virt-install --name provision-node --network=bridge:docker0
