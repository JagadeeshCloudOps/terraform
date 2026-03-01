resource "aws_route53_record" "www" {
  for_each = aws_instance.aicloudera
  zone_id = var.zone_id
  name    = "${each.key}.${var.domine_name}"
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}