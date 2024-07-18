resource "null_resource" "test" {
  count = 3
}

variable "components" {
  default = ["frontend","catalogue","mongo"]
}

resource "null_resource" "test" {
  count = length(var.components)
}