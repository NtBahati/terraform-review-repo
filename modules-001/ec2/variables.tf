variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
 }

# variable "vpc_id" {
#   description = "VPC ID where the instance will be created"
#   type        = string
# }

variable "subnet_id" {
  description = "Subnet ID where the instance will be created"
  type        = string
}

# variable "ami_id" {
#   type        = string
# }

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  }

variable "key_name" {
  description = "Key pair name for SSH access to the EC2 instance"
  type        = string
}

variable "tags" {
  description = "list of all the tags"
  type        = map(string)
}