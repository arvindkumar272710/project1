#!/bin/bash

echo "Running ApplicationStart script..."

# Navigate to the application directory
cd /app

# Start the application (example for a Java application)
if [ "$DEPLOY_ENV" == "blue" ]; then
    nohup java -jar your-application.jar --spring.config.location=/app/config-blue.json > /dev/null 2>&1 &
else
    nohup java -jar your-application.jar --spring.config.location=/app/config-green.json > /dev/null 2>&1 &
fi

echo "ApplicationStart script completed."
