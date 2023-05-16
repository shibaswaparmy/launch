#!/usr/bin/env sh

NODE_DIR=$HOME/node
sudo mkdir /data
chown -R ubuntu:ubuntu /data
HEIMDALL_HOME=/data/heimdalld

# init heimdall node
heimdalld init --home /data/heimdalld

# copy node directories to home directories
cp -rf $NODE_DIR/heimdall/config/genesis.json $HEIMDALL_HOME/config/