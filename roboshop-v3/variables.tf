
variable "instance_type" {
  default = "t3.small"
}

variable "domain_name" {
  default = "wdevops.fun"
}
variable "components" {
  default = ["frontend","catalogue","mongo"]
}