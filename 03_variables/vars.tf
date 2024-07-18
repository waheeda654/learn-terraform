variable "x" {
  default = 10
}

variable "y" {
  default = true
}

variable "z" {
  default = "Hello Waheeda"
}

#List variable
#Values in list need not be of same data type
variable "l" {
  default = [10,20,40,"abc",false]
}
#values numbers and boolean need tot be quoted only strings are quoted

#Map variable
variable "m" {
  default = {
    course = "Devops"
    Trainer = "Raghu"
  }
}

#outputs
#direct values does nor require to be accessed with ${}
output "x" {
  value = var.x
}

#Accessing variable has a combination with a string then we need to refer the variable with ${}
output "x1" {
  value = "Value of x- ${var.x}"
}

output "l" {
  value = var.l[1]
}

output "m" {
  value = "Course Name:- ${var.m["course"]}, Trainer Name:- ${var.m["Trainer"]}"
}

variable "c" {
type = number
}

output "c" {
  value = var.c
}