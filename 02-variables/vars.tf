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
  value           = var.sample21
}

//Terraform string should be quoted in double quotes,
//but whereas numbers and booleans need not to be.

#String Data type
variable "string" {
  default           = "Hello World"
}

# Number data type
variable "number" {
  default           = 100
}

# Boolean Data type
variable "boolean" {
  default            = true
}

output "Data-types" {
  value              = "string = ${var.string}, Number = ${var.number}, Boolean = ${var.boolean}"
}

##Variables Types
variable "Training" {
  default = "DevOps"
}

#List
variable "Trainings" {
  default = ["AWS", "DevOps"]
}
#Map
variable "Training-Details" {
  default = {
    AWS = "6AM IST"
    DevOps = "8AM IST"
  }
}

output "Training" {
  value = var.Training
}

output "FIRST-TRANING" {
  value = var.Trainings[0]
}

output "SECOND-TRAINING" {
  value = var.Trainings[1]
}

output "TRAINING-DETAILS" {
  value = "AWS TIMING - ${var.Training-Details["AWS"]}, DevOps Timing - ${var.Training-Details["DevOps"]}"
}

#so far we have declared value with in variable block.
#Now data comes from different sources.

// variable from tfvars
variable "FRUITS" {
}

output "FRUITS" {
  value = var.FRUITS
}

###Comand line

variable "COUNTRY" {}
output "COUNTRY" {
  value = var.COUNTRY
}



