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