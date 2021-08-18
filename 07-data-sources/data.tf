data "aws_ami" "example" {
  #executable_users = ["self"]
  most_recent           = true
  name_regex            = "^centos*}"
  owners                = ["973714476881"]
}

output "amis" {
  value                 = data.aws_ami.example.id
}

provider "aws" {
  region                = "us-east-1a"
}