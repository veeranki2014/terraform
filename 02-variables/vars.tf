variable "sample" {
  default         ="Hello Variable"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = "${var.sample}"
}

output "sample3" {
  value = var.sample
}