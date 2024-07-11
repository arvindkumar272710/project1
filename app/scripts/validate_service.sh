#!/bin/bash

echo "Running ValidateService script..."

# Check if the application is running
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080/health)

if [ $STATUS_CODE -eq 200 ]; then
    echo "Application is running."
    exit 0
else
    echo "Application is not running."
    exit 1
fi
