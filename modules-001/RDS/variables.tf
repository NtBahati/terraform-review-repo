variable "aws_region" {
  description = "The AWS region to deploy the resources."
  type        = string
#   default     = "us-east-1"
}

variable "allocated_storage" {
  description = "The storage size for the RDS instance in GB."
  type        = number
#   default     = 20
}

variable "engine" {
  description = "The database engine to use."
  type        = string
#   default     = "postgres"
}

variable "engine_version" {
  description = "The database engine version."
  type        = string
#   default     = "15.10"
}

variable "instance_class" {
  description = "The instance type for the RDS instance."
  type        = string
#   default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database."
  type        = string
#   default     = "bahatidatabase"
}

variable "username" {
  description = "The master username for the RDS instance."
  type        = string
#   default     = "admin"
}

variable "password" {
  description = "The master password for the RDS instance."
  type        = string
#   default     = "mypassword"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
#   default     = "10.0.0.0/16"
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
#   default     = ["10.0.3.0/24", "10.0.4.0/24"]
}