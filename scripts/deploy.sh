#!/bin/sh

ssh duy210697@35.237.235.110 <<EOF
 cd ~/node-app-test-jenkin
 git pull
 npm install — production
 pm2 restart all
 exit
EOF