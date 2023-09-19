resource "aws_vpc" "ntier" {
  tags = {
    Name = var.aws_vpc
  }
  cidr_block = var.vpc_cidr_block
}

