variable "sample" {
  default         ="Hello Variableaaaaaaaaaaaa"
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