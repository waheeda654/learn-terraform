resource "null_resource" "test" {
  status = ""
}

terraform {
  backend "s3" {
    bucket = "d80-terraform1"
    key = "test/terraform.tfstate"
    region="us-east-1"
  }
}