provider "aws" {
  region = var.aws_region
}

## Terraform blockS
terraform {
  
  backend "s3" {
    bucket         = "aws_s3_bucket.devoir02_bucket.bucket"
    key            = "global/terraform.tfstate" # Path in the S3 bucket
    region         = "us-east-1"
    dynamodb_table = "Dynamodb-table02"
    encrypt        = true # Enables server-side encryption for the state file
  }
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

}





