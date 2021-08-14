resource "aws_instance" "sample" {
  count                   = 2
  ami                     = "ami-074df373d6bafa625"
  instance_type           = "t3.small"
  vpc_security_group_ids  = [var.SG_ID]

  tags = {
    Name            = "sample"
  }
}

variable "SG_ID" {}
//variable "TYPE" {}

//output "TYPE" {
//  value = aws_instance.sample.instance_type
//}

//output "PRIVATE_IP" {
//  value = "aws_instance.sample.private_ip"
//}