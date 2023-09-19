resource "aws_vpc" "ntier" {
  tags = {
    Name = var.aws_vpc
  }
  cidr_block = var.vpc_cidr_block
}

resource "aws_route_table" "ntier-rt" {
  vpc_id = aws_vpc.ntier.id
  tags = {
    Name = "ntier-rt"
  }
  depends_on = [aws_vpc.ntier]
}

resource "aws_internet_gateway" "ntier-igw" {
  vpc_id = aws_vpc.ntier.id
  tags = {
    Name = "ntier-igw"
  }
  depends_on = [aws_vpc.ntier]
}
resource "aws_route" "attach" {
  route_table_id         = aws_route_table.ntier-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ntier-igw.id
  depends_on = [
    aws_vpc.ntier,
    aws_internet_gateway.ntier-igw,
    aws_route_table.ntier-rt
  ]
}