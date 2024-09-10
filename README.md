# AWS Resource Listing Script

### Author: VishukumarPatel  
### Version: v0.0.1

## Overview

This script is designed to list various AWS resources in an AWS account. It allows users to quickly retrieve information on services like EC2, S3, RDS, DynamoDB, Lambda, and more by simply specifying the AWS region and the service name. The script utilizes the AWS CLI to fetch the resource details.

### Supported AWS Services

1. EC2
2. S3
3. RDS
4. DynamoDB
5. Lambda
6. EBS
7. ELB
8. CloudFront
9. CloudWatch
10. SNS
11. SQS
12. Route53
13. VPC
14. CloudFormation
15. IAM

---

## Prerequisites

- **AWS CLI Installed**: Ensure the AWS CLI is installed on your system. You can download and install it from [AWS CLI official documentation](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
  
- **AWS CLI Configured**: The AWS CLI must be configured with the necessary credentials and region information. Run `aws configure` to set up your AWS access key, secret key, and default region.

---

## Usage

```bash
./aws_resource_list.sh <region> <service_name>
```

### Example

To list all EC2 instances in the `us-east-1` region, run:

```bash
./aws_resource_list.sh us-east-1 ec2
```

### Supported Service Names

- `ec2`: List all EC2 instances
- `rds`: List all RDS instances
- `s3`: List all S3 buckets
- `dynamodb`: List all DynamoDB tables
- `lambda`: List all Lambda functions
- `ebs`: List all EBS volumes
- `cloudfront`: List all CloudFront distributions
- `vpc`: List all VPCs
- `cloudwatch`: List all CloudWatch alarms
- `cloudformation`: List all CloudFormation stacks
- `sns`: List all SNS topics
- `sqs`: List all SQS queues
- `iam`: List all IAM users
- `route53`: List all Route53 hosted zones

---

## Error Handling

- **Incorrect Number of Arguments**: If the required number of arguments is not passed, the script will output:

  ```bash
  Usage: ./aws_resource_list.sh <region> <service_name>
  ```

- **AWS CLI Not Installed**: If AWS CLI is not installed on your system, the script will prompt you to install it:

  ```bash
  AWS CLI is not installed. Please install it and try again.
  ```

- **AWS CLI Not Configured**: If AWS CLI is not configured, the script will display:

  ```bash
  AWS CLI is not configured. Please configure it and try again.
  ```

- **Invalid Service Name**: If an invalid service name is passed, the script will display:

  ```bash
  Invalid service. Please enter a valid service.
  ```

---

## Notes

- Ensure that your AWS credentials have the necessary permissions to access the resources you are querying.
- The script supports listing resources in any AWS region by passing the desired region as an argument.

--- 

## License

This script is provided as-is without any warranties or guarantees. The author and DevOps team are not responsible for any damage caused by using this script.

--- 

## Contact

For any issues or questions regarding this script, please contact the DevOps team.

