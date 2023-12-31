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
variable "subnet_cidr_range" {
  type        = string
  default     = "10.10.%g.0/24"
  description = "This is subnet CIDR ranges"
}
variable "subnet_name" {
  type        = list(string)
  default     = ["web1", "web2", "app1", "app2", "db1", "db2"]
  description = "This is subnet name"
}