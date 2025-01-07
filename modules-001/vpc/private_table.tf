resource "aws_route_table" "private_route_table" {
  for_each = var.subnets["private"]

  vpc_id = aws_vpc.bahati-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway[each.key].id
  }

  tags = merge(var.tags, {
    Name = format("Private-Route-Table-%s", each.key)
  })
}

# Route Table Associations for Private Subnets

resource "aws_route_table_association" "private_association" {
  for_each = var.subnets["private"]

  subnet_id      = aws_subnet.private[each.key].id
  route_table_id = aws_route_table.private_route_table[each.key].id
}
