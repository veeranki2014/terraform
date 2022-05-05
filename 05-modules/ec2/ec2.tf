
resource "aws_instance" "sample" {
  count                   = 2
  ami                     = "ami-0bb6af715826253bf"
  instance_type           =  var.TYPE
  vpc_security_group_ids  = [var.SG_ID]

  tags = {
    Name            = "sample_${count.index}"
  }
}

variable "SG_ID" {}
variable "TYPE" {}

//output "TYPE" {
//  value = aws_instance.sample.instance_type
//}

output "PRIVATE_IP" {
  value = "aws_instance.sample.private_ip"
}