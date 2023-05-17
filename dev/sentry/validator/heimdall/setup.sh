#!/usr/bin/env sh
DIR="/data"
USERNAME="ubuntu"

# Check if /data directory exists
if [ ! -d "$DATA_DIR" ]; then
    # Create /data directory
    sudo mkdir "$DATA_DIR"
fi

# Set owner as ubuntu:ubuntu
sudo chown -R "$USERNAME":"$USERNAME" "$DIR"

NODE_DIR=$HOME/node
HEIMDALL_HOME=/data/heimdalld

# init heimdall node
heimdalld init --home /data/heimdalld

# copy node directories to home directories
cp -rf $NODE_DIR/heimdall/config/genesis.json $HEIMDALL_HOME/config/