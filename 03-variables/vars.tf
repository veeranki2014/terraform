variable "sample" {
  default         = "ankaraaaaaaaaaa"
}

output "out1" {
  value           = var.sample
}

output "out2" {
  value = var.sample
}