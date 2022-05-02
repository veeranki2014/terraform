resource "aws_instance" "sample" {
  ami                     = "ami-0bb6af715826253bf"
  instance_type           = "t3.micro"
   tags = {
    Name                  = "sample"
  }
}

provider "aws" {
  region                  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket                = "terraform-anka-devops"
    key                   = "sample/terraform.tfstate"
    region                = "us-east-1"
    dynamodb_table        = "terraform"
  }
}