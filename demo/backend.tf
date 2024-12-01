provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "ramu-technology-123"  # Replace with your S3 bucket name
    key            = "terraform.tfstate"  # State file name/path
    region         = "us-east-1"          # AWS region
    encrypt        = true                  # Enable encryption for state file
    dynamodb_table = "customers"  # DynamoDB table for locking
    acl            = "private"  # Access control for state file
  }
}
