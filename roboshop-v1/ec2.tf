resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids ="[sg-01456530816da8d59]"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids ="[sg-01456530816da8d59]"

  tags = {
    Name = "mongo"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids ="[sg-01456530816da8d59]"

  tags = {
    Name = "catalogue"
  }
}