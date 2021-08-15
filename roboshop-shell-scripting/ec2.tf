# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_worker" {
  count                 = length(var.COMPONENTS)
  ami                   = "ami-074df373d6bafa625"
  spot_price            = "0.0294"
  instance_type         = "t3.micro"
  wait_for_fulfillment  = true

  tags                  = {
    Name                = "CheapWorker"
  }
}

resource "aws_ec2_tag" "name-tag" {
  count                 = length(var.COMPONENTS)
  resource_id           = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id, count.index)
  key                   = "Name"
  value                 = element(var.COMPONENTS,count.index)
}

//output "out" {
//  value = element(aws_spot_instance_request.cheap_worker.*.spot_instance_id, count.index)
//}