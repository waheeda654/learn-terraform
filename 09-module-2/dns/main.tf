resource "aws_route53_record" "test1" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "test1.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}