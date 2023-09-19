variable "aws_vpc" {
  type        = string
  description = "This is VPC name"
}
variable "vpc_cidr_block" {
  type        = string
  description = "This is VPC CIDR range"
}
variable "subnet_name" {
  type        = list(string)
  description = "This is subnet name"
}
variable "aws_security_group_websg" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type             = string
      protocol         = string
      from_port        = number
      to_port          = number
      cidr_blocks      = list(string)
      ipv6_cidr_blocks = list(string)
    }))
  })
}
variable "aws_security_group_appsg" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type             = string
      protocol         = string
      from_port        = number
      to_port          = number
      cidr_blocks      = list(string)
      ipv6_cidr_blocks = list(string)
    }))
  })
}
variable "aws_security_group_dbsg" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type             = string
      protocol         = string
      from_port        = number
      to_port          = number
      cidr_blocks      = list(string)
      ipv6_cidr_blocks = list(string)
    }))
  })
}