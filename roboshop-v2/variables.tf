variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
variable "instance_type" {
  default = "t3.small"
}
variable "security_group_id" {
  default = ["sg-01456530816da8d59"]
}
variable "zone_id" {
  default = "Z0945346ECJX5XF9YH9W"
}
variable "domain_name" {
  default = "wdevops.fun"
}