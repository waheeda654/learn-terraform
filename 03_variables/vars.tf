variable "x" {
  default = 10
}

variable "y" {
  default = true
}

variable "z" {
  default = "Hello Waheeda"
}

#valyes numbers and boolean need tot be quoted only strings are quoted

#outputs
#direct values does nor require to be accessed with ${}
output "x" {
  value = var.x
}

#Accessing variable has a combination with a string then we need to refer the variable with ${}
output "x1" {
  value = "Value of x- ${var.x}"
}