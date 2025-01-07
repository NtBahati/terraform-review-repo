resource "aws_eip" "nat_eip" {
  for_each = var.subnets["public"]

  vpc = true

#   vpc = true
#   tags = merge(var.tags, { Name=format("eip-%s",each.key)})
  tags = merge(var.tags, {
    Name = format("%s-%s-%s-eip", var.tags["env"], var.tags["owner"], var.tags["project"])
  })
}


