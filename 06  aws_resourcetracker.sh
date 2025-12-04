#!/bin/bash

#######################

### Author: Darshan
### Version v1
### Date:04/12/2025
### To find aws Resources [For Iam, Ec2, s3, lambda]

########################

set -x


#list s3 buckets
echo "Print s3 buckets"
aws s3 ls

#list ec2 instance
echo "print ec2 instances"
aws ec2 describe-instances
aws ec2 describe-instances |  jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print lambda functions"
aws lambda list-functions

#list Iam user
echo "print Iam users"
aws iam list-users

