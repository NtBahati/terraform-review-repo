resource "aws_db_instance" "db003" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = "default.${var.engine}${replace(var.engine_version, ".", "")}" # Dynamically generate parameter group
  skip_final_snapshot  = true

  publicly_accessible  = false
  vpc_security_group_ids = [
    aws_security_group.my_rds_sg.id
  ]
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name

  tags = {
    Name        = "MyRDSInstance"
    Environment = "Production"
  }
}

resource "aws_security_group" "my_rds_sg" {
  name_prefix = "my-rds-sg"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "MyRDSSecurityGroup"
  }
}