resource "aws_security_group" "websg" {
  name   = var.aws_security_group_websg.name
  vpc_id = aws_vpc.ntier.id
  depends_on = [
    aws_vpc.ntier
  ]
}

resource "aws_security_group_rule" "websg" {
  count             = length(var.aws_security_group_websg.rules)
  type              = var.aws_security_group_websg.rules[count.index].type
  security_group_id = aws_security_group.websg.id
  protocol          = var.aws_security_group_websg.rules[count.index].protocol
  from_port         = var.aws_security_group_websg.rules[count.index].from_port
  to_port           = var.aws_security_group_websg.rules[count.index].to_port
  cidr_blocks       = var.aws_security_group_websg.rules[count.index].cidr_blocks
  ipv6_cidr_blocks  = var.aws_security_group_websg.rules[count.index].ipv6_cidr_blocks
  depends_on = [
    aws_security_group.websg
  ]
}

resource "aws_security_group" "appsg" {
  name   = var.aws_security_group_appsg.name
  vpc_id = aws_vpc.ntier.id
  depends_on = [
    aws_vpc.ntier
  ]
}

resource "aws_security_group_rule" "appsg" {
  count             = length(var.aws_security_group_appsg.rules)
  type              = var.aws_security_group_appsg.rules[count.index].type
  security_group_id = aws_security_group.appsg.id
  protocol          = var.aws_security_group_appsg.rules[count.index].protocol
  from_port         = var.aws_security_group_appsg.rules[count.index].from_port
  to_port           = var.aws_security_group_appsg.rules[count.index].to_port
  cidr_blocks       = var.aws_security_group_appsg.rules[count.index].cidr_blocks
  ipv6_cidr_blocks  = var.aws_security_group_appsg.rules[count.index].ipv6_cidr_blocks
  depends_on = [
    aws_security_group.websg
  ]
}

resource "aws_security_group" "dbsg" {
  name   = var.aws_security_group_dbsg.name
  vpc_id = aws_vpc.ntier.id
  depends_on = [
    aws_vpc.ntier
  ]
}
resource "aws_security_group_rule" "dbsg" {
  count             = length(var.aws_security_group_dbsg.rules)
  type              = var.aws_security_group_dbsg.rules[count.index].type
  security_group_id = aws_security_group.dbsg.id
  protocol          = var.aws_security_group_dbsg.rules[count.index].protocol
  from_port         = var.aws_security_group_dbsg.rules[count.index].from_port
  to_port           = var.aws_security_group_dbsg.rules[count.index].to_port
  cidr_blocks       = var.aws_security_group_dbsg.rules[count.index].cidr_blocks
  ipv6_cidr_blocks  = var.aws_security_group_dbsg.rules[count.index].ipv6_cidr_blocks
  depends_on = [
    aws_security_group.websg
  ]
}