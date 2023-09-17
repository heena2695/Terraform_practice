variable "aws_vpc" {
  type        = string
  default     = "vpc-ntier"
  description = "This is VPC name"
}
variable "vpc_cidr_block" {
  type        = string
  default     = "10.10.0.0/16"
  description = "This is VPC CIDR range"
}
variable "subnet_cidr_block" {
  type        = string
  default     = "10.10.0.0/24"
  description = "This is subnet CIDR range"
}
variable "subnet_name" {
  type        = string
  default     = "web"
  description = "This is subnet name"
}