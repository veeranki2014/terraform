variable "sample" {
  default         ="Hello Variableaaaaaaaaaaaa111111111111111"
}

output "sample" {
  value           = var.sample
}


output "sample1" {
  value           = "${var.sample} - from terraform"
}
//variable if it is combined with some other string then we have to use ${} interpolation for variable access.


variable "sample2" {}

output "sample2" {
  value = var.sample2
}