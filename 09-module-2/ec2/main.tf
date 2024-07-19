resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01456530816da8d59"]

  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = "aws_instance.test.private_ip"
}