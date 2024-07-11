#!/bin/bash

echo "Running AfterInstall script..."

# Change ownership of the application files
chown -R ec2-user:ec2-user /app

# Copy the appropriate configuration file based on the environment
if [ "$DEPLOY_ENV" == "blue" ]; then
    cp /app/config-blue.json /app/config.json
else
    cp /app/config-green.json /app/config.json
fi

echo "AfterInstall script completed."
