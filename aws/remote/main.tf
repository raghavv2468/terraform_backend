provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-raghava-bucket-"  # Replace with a unique bucket name
  acl    = "private"  # You can change this to other ACLs like 'public-read', etc.


resource "aws_dynamodb_table" "example_table" {
  name           = "ramuu-table"  # DynamoDB table name
  billing_mode   = "PROVISIONED"    # You can also use "PAY_PER_REQUEST" for on-demand billing
  hash_key       = "raghava_raghu"             # Partition key
  read_capacity  = 5                # Read capacity units (only for PROVISIONED mode)
  write_capacity = 5                # Write capacity units (only for PROVISIONED mode)

  attribute {
    name = "raghava_raghu"                     # Attribute name for the hash key
    type = "S"                      # Attribute type, 'S' is for string
  }



   
