resource "aws_vpc" "ntier" {
  tags = {
    Name = var.aws_vpc
  }
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "subnet" {
  count      = length(var.subnet_name)
  vpc_id     = aws_vpc.ntier.id
  cidr_block = var.subnet_cidr_range[count.index]
  tags = {
    Name = var.subnet_name[count.index]
  }
  depends_on = [aws_vpc.ntier]
}