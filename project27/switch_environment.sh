#!/bin/bash

# AWS CLI command to update ALB listener rules to switch traffic
NEW_ENV=$1
CURRENT_RULE=$(aws elbv2 describe-rules --listener-arn <your-listener-arn> --query 'Rules[?Conditions[0].Field==`host-header`].{RuleArn:RuleArn}' --output text)

if [ "$NEW_ENV" == "blue" ]; then
    aws elbv2 modify-rule --rule-arn $CURRENT_RULE --conditions Field=host-header,Values=blue.example.com
    echo "Switched traffic to blue environment."
else
    aws elbv2 modify-rule --rule-arn $CURRENT_RULE --conditions Field=host-header,Values=green.example.com
    echo "Switched traffic to green environment."
fi
