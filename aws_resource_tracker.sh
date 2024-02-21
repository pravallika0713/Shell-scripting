#!/bin/bash

#################
# Author: Pravallika
# Date: 7th Feb
#
#
#
#
# This script will report aws resource usage for every 24 hrs

set -x

echo "list s3"
aws s3 ls 

echo "list ec2 instances"
aws ec2 describe-instances

echo "lambda list functions"
aws lambda list-functions 

echo "list iam users"
aws iam list-users | jq '.Users[].UserId'

