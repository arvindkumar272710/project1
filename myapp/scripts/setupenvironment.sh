#!/bin/bash
# Setup environment
ENVIRONMENT=$1
CONFIG_DIR=/home/ec2-user/myapp/config
DEST_DIR=/home/ec2-user/myapp

if [ "$ENVIRONMENT" == "blue" ]; then
  cp $CONFIG_DIR/blue.env $DEST_DIR/.env
  echo "Using blue environment configuration."
elif [ "$ENVIRONMENT" == "green" ]; then
  cp $CONFIG_DIR/green.env $DEST_DIR/.env
  echo "Using green environment configuration."
else
  echo "Invalid environment specified. Use 'blue' or 'green'."
  exit 1
fi
