provider "aws" {
  region = "us-east-1"
}

## Terraform blockS
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "ec2-001" {
  source = "../../../modules-001/ec2"
  aws_region = "us-east-1"
key_name = "a1_laptop_key"
subnet_id ="subnet-080ae30c3b2f0782f"
instance_type = "t2.micro"
tags = {
    Name = "homework"
    project = "ec2-terraform"
    owner = "DEL"
    env = "dev"
        
}
}