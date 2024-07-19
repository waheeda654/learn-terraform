resource "aws_route53_record" "frontend" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "frontend.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}