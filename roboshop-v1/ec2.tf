resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01456530816da8d59"]

  tags = {
    Name = "frontend.dev"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "frontend.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01456530816da8d59"]

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "mongo.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids =["sg-01456530816da8d59"]

  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "catalogue.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalogue.private_ip]
}