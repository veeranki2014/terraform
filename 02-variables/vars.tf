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


variable "sample21" {}

output "sample2" {
  value = var.sample21
}

//Terraform string should be quoted in double quotes,
//but whereas numbers and booleans need not to be.

//# String Data type
//variable "string" {
//  default = "Hello World"
//}

# Number data type
variable "number" {
  default = 100
}

# Boolean Data type
variable "boolean" {
  default = true
}

output "data-types" {
  value = "string = ${var.string}, Number = ${var.number}, Boolean = ${var.boolean}"
}