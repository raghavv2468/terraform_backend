provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "raghu-technology-190"  # S3 bucket name
    key            = "raghava/terraform.tfstate"  # Path inside the S3 bucket
    region         = "us-east-1"  # S3 and DynamoDB region
    encrypt        = true  # Enable encryption for the state file
    dynamodb_table = "raghava-table"  # DynamoDB table for state locking
    acl            = "private"  # ACL for the S3 bucket, set to "private"
  }
}
