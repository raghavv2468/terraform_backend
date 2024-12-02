provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "raghu-technology-190"  
    key            = "raghava/terraform.tfstate" 
    region         = "us-east-1"          # AWS region
    encrypt        = true                  # Enable encryption for state file
    dynamodb_table = "tejaa.it"  # DynamoDB table for locking
    
  }
}

