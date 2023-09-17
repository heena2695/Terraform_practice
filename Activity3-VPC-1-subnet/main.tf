resource "aws_vpc" "ntier" {
  tags = {
    Name = var.aws_vpc
  }
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "web" {
  vpc_id     = aws_vpc.ntier.id
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.subnet_name
  }
  depends_on = [aws_vpc.ntier]
}