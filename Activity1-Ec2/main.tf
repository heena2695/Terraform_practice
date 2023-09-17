terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "Ubuntu" {
  tags = {
    Name = "EC2_Terraform"
  }
  ami                    = "ami-0ccea833bf267252a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0ed3f55f147b0f3e3"]
  subnet_id              = "subnet-0c58c5eb0785b53f8"
}