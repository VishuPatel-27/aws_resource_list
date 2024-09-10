########################################################################
#!/bin/bash

# This script will list all the resources in the AWS account
# Author: VishukumarPatel/DevOps Team
# Version: v0.0.1
#
# Following are the supported AWS services by the scipt
# 1. EC2
# 2. S3
# 3. RDS
# 4. DynamoDB
# 5. Lambda
# 6. EBS
# 7. ELB
# 8. CloudFront
# 9. CloudWatch
# 10. SNS
# 11. SQS
# 12. Route53
# 13. VPC
# 14. CloudFormation
# 15. IAM
#
# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 EC2
########################################################################

# Check if the requried number of arguments are passed
 if [ $# -ne 2 ]; then
    echo "Usage: $0 <region> <service_name>"
    exit 1
    fi

# Check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it and try again."
    exit 1
    fi 

# Check if the AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure it and try again."
    exit 1
    fi

# Execute the AWS CLI command based on the service name
case $2 in
    ec2)
        echo "Listing EC2 Instances in $1"
        aws ec2 describe-instances --region $1
        ;;
    rds)
        echo "Listing RDS Instances in $1"
        aws rds describe-db-instances --region $1
        ;;
    s3)
        echo "Listing S3 Buckets in $1"
        aws s3api list-buckets --region $1
        ;;
    cloudfront)
        echo "Listing CloudFront Distributions in $1"
        aws cloudfront list-distributions --region $1
        ;;
    vpc)
        echo "Listing VPCs in $1"
        aws ec2 describe-vpcs --region $1
        ;;
    iam)
        echo "Listing IAM Users in $1"
        aws iam list-users --region $1
        ;;
    route5)
        echo "Listing Route53 Hosted Zones in $1"
        aws route53 list-hosted-zones --region $1
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $1"
        aws cloudwatch describe-alarms --region $1
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $1"
        aws cloudformation describe-stacks --region $1
        ;;
    lambda)
        echo "Listing Lambda Functions in $1"
        aws lambda list-functions --region $1
        ;;
    sns)
        echo "Listing SNS Topics in $1"
        aws sns list-topics --region $1
        ;;
    sqs)
        echo "Listing SQS Queues in $1"
        aws sqs list-queues --region $1
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $1"
        aws dynamodb list-tables --region $1
        ;;
    ebs)
        echo "Listing EBS Volumes in $1"
        aws ec2 describe-volumes --region $1
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac