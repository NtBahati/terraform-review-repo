# Data block to fetch existing security group
data "aws_security_group" "homework_001" {
  name = "ec2_sg" # Replace with your security group name
}

# data "aws_security_group" "bahati" {
#   id = "sg-0c266b6fe285c4ad1"  # Replace with your Security Group ID
# }
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-20.04-amd64-server-*"] # Replace `20.04` with your preferred version
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical's owner ID for Ubuntu AMIs
}
