resource "aws_nat_gateway" "nat_gateway" {
  for_each = var.subnets["public"]

  allocation_id = aws_eip.nat_eip[each.key].id
  subnet_id     = aws_subnet.public[each.key].id


    tags = merge(var.tags, {
    Name = format("%s-%s-%s-vpc", var.tags["env"], var.tags["owner"], var.tags["project"])
  })
}

