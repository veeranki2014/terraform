variable "sample" {
  default         ="Hello Variableaaaaaaaaaaaa111111111111111"
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