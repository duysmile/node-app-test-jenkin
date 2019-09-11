#!/bin/sh
ssh -tto StrictHostKeyChecking=no duy210697@35.237.235.110 uptime<<EOF
 cd ~/node-app-test-jenkin
 git pull
 npm install
 pm2 restart all
 exit
EOF