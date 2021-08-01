resource "aws_instance" "sample" {
  ami                     = "ami-074df373d6bafa625"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

  tags = {
    Name            = "sample"
  }
}

resource "aws_security_group" "allow_ssh" {
  name                = "allow_ssh"
  description         = "allow_ssh"

  ingress {
    description       = "ssh"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  }
  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1" #its allow all ports 0 to 65535
    cidr_blocks       = ["0.0.0.0/0"]
  }
  tags = {
    Name              = "allow_ssh"
  }
}

//output "sg-attribute" {
//  value               = aws_security_group.allow_ssh
//}

//output "ec2-attribute" {
//  value               = aws_instance.sample
//}
provider "aws" {
  region              = "us-east-1"
}