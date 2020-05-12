#!/bin/sh
:'
firewall... --zone=my-zone --add-port 80/tcp
'
firewall-cmd --zone=$1 --add-port $2
firewall-cmd --zone=$1 --add-port $2  --permanent
