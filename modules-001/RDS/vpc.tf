# vpc.tf
resource "aws_vpc" "drs_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "drs-vpc"
  }
  
}
resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = aws_subnet.private_subnets[*].id

  tags = {
    Name = "MyDBSubnetGroup"
  }
}

data "aws_availability_zones" "available" {}