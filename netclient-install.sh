#!/bin/sh
set -e

[ -z "$SERVER_URL" ] && echo "Need to set SERVER_URL" && exit 1;
[ -z "$NET_NAME" ] && echo "Need to set NET_NAME" && exit 1;
[ -z "$KEY" ] && KEY=nokey;



wget -O netclient https://github.com/gravitl/netmaker/releases/download/latest/netclient netclient
chmod +x netclient
sudo ./netclient -c install -s $SERVER_URL -g $NET_NAME -k $KEY
rm -f netclient