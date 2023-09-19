aws_vpc        = "vpc-ntier"
vpc_cidr_block = "10.10.0.0/16"
subnet_name    = ["web", "app", "db"]
aws_security_group_websg = {
  name        = "websg"
  description = "This is web security group"
  rules = [{
    type             = "ingress"
    protocol         = "tcp"
    from_port        = 80
    to_port          = 80
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    },
    {
      type             = "ingress"
      protocol         = "tcp"
      from_port        = 22
      to_port          = 22
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    },
    {
      type             = "egress"
      protocol         = "-1"
      from_port        = 0
      to_port          = 65535
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }]
}
aws_security_group_appsg = {
  name        = "appsg"
  description = "This is app security group"
  rules = [{
    type             = "ingress"
    protocol         = "tcp"
    from_port        = 8080
    to_port          = 8080
    cidr_blocks      = ["10.10.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    },
    {
      type             = "ingress"
      protocol         = "tcp"
      from_port        = 22
      to_port          = 22
      cidr_blocks      = ["10.10.0.0/16"]
      ipv6_cidr_blocks = ["::/0"]
  }]
}
aws_security_group_dbsg = {
  name        = "dbsg"
  description = "This is db security group"
  rules = [{
    type             = "ingress"
    protocol         = "tcp"
    from_port        = 3306
    to_port          = 3306
    cidr_blocks      = ["10.10.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
  }]
}