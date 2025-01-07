# Public Subnets
resource "aws_subnet" "public" {
  for_each                = var.subnets["public"]
  vpc_id                  = aws_vpc.bahati-vpc.id
  cidr_block              = each.value
  availability_zone       = each.key
  map_public_ip_on_launch = true

  tags = merge(var.tags, { Name=format("Public-Subnet-%s",each.key)})
}

# Private Subnets
resource "aws_subnet" "private" {
  for_each          = var.subnets["private"]
  vpc_id            = aws_vpc.bahati-vpc.id
  cidr_block        = each.value
  availability_zone = each.key

  tags = merge(var.tags, { Name=format("Private-Subnet-%s",each.key)})
}
