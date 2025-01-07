resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.bahati-vpc.id

  tags = merge (var.tags, {name=format("%s-%s-%s-igw",var.tags["env"],var.tags["owner"],var.tags["project"])})
}
