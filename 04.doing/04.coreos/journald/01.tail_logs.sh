#!/bin/bash

# tail journalctl 
journalctl -f 

# tail with unit 
journalctl -u apache.service -f 

# no page 
journalctl -no-pager 

# with indentifier
journalctl --identifier=coreos-cloudinit


