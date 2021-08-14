resource "aws_instance" "sample" {
 # count                   = 0
  ami                     = "ami-074df373d6bafa625"
  instance_type           = var.TYPE == null ? "t3.small" : var.TYPE
  #vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
    Name            = "sample${count.index}"
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "TYPE" {
  default = null
}