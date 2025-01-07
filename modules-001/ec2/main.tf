resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  vpc_security_group_ids = [data.aws_security_group.homework_001.id]  # Use the fetched security group ID
  #security_groups = [data.aws_security_group.homework_001.id]

  tags = var.tags
   

}
