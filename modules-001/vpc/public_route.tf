resource "aws_route_table" "public_route_table" {
  for_each = var.subnets["public"]

  vpc_id = aws_vpc.bahati-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(var.tags, {
    Name = format("Public-Route-Table-%s", each.key)
      })

# Route Table Associations for Public Subnets     
}
resource "aws_route_table_association" "public_association" {
  for_each = var.subnets["public"]

  subnet_id      = aws_subnet.public[each.key].id
  route_table_id = aws_route_table.public_route_table[each.key].id
}


