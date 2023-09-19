
resource "aws_subnet" "subnet" {
  count      = length(var.subnet_name)
  vpc_id     = aws_vpc.ntier.id
  cidr_block = cidrsubnet("10.10.0.0/16", 8, count.index)
  tags = {
    Name = var.subnet_name[count.index]
  }
  depends_on = [aws_vpc.ntier]
}