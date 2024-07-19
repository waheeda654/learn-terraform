resource "aws_route53_record" "mongo" {
  zone_id = "Z0945346ECJX5XF9YH9W"
  name    = "test.dev.wdevops.fun"
  type    = "A"
  ttl     = 15
  records = ["1.1.1.1"]
}