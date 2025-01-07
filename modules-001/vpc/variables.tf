variable "vpc_name" {
   type        = string
}

variable "cidr_block" {
#   description = "The CIDR block for the VPC"
  type        = string
}

variable "region" {
#   description = "The AWS region to create the VPC in"
  type        = string
}

variable "tags" {
  type = map(string)
}

variable "subnets" {
  type = map(map(string))
}

variable "igw" {
  type = string
  }

  variable "availability_zones" {
  description = "Map of availability zones"
  type        = map(string)
}
