#!/bin/bash
#connect my box ssh
#Ip and Password
sshpass -p $2 ssh -o GlobalKnownHostsFile=/dev/null -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@$1
