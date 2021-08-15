# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_worker" {
  count                   = local.LENGTH
  ami                     = "ami-074df373d6bafa625"
  spot_price              = "0.0294"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-0bcba096b73fa353d"]
  wait_for_fulfillment    = true

  tags                    = {
    Name                  = "CheapWorker"
  }
}

resource "aws_ec2_tag" "name-tag" {
  count                   = local.LENGTH
  resource_id             = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id, count.index)
  key                     = "Name"
  value                   = element(var.COMPONENTS,count.index)
}

//output "out" {
//  value = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id, count.index)
//}

resource "null_resource" "run-shell-scripting" {
  provisioner "remote-exec" {
    connection {
      count               = local.LENGTH
      host                = element(aws_spot_instance_request.cheap_worker.*.public_ip, count.index)
      user                = "centos"
      password            = "DevOps321"
    }
    inline                = [
      "cd /home/centos",
      "git clone https://DevOps-Batches@dev.azure.com/DevOps-Batches/DevOps57/_git/shell-scripting",
      "cd shell-scripting/roboshop",
      "sudo make ${element(var.COMPONENTS,count.index)}"
      ]
    }
}

locals {
  LENGTH                  = length(var.COMPONENTS)
}

