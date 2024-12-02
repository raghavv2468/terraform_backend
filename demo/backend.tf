provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "raghu-technology-190"  
    key            = "env:/terraform.tfstate" 
    region         = "us-east-1"          # AWS region
    encrypt        = true                  # Enable encryption for state file
    dynamodb_table = "raghava-table"  # DynamoDB table for locking
    acl            = "private"  # Access control for state file
  }
}

