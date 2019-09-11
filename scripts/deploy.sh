#!/bin/sh

ssh -tt duy210697@35.237.235.110 <<EOF
 sudo -s
 cd /home/duy210697/node-app-test-jenkin/
 git pull
 npm install
 pm2 restart all
 exit
EOF