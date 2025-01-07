resource "aws_vpc" "bahati-vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true 

  tags = merge (var.tags, {name=format("%s-%s-%s-vpc",var.tags["env"],var.tags["owner"],var.tags["project"])})
  #tags = merge (var.tags, {name=var.vpc_name})
  #tags = merge (var.tags, {name="homework002"})

}
