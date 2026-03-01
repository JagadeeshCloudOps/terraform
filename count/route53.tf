resource "aws_route53_record" "www" {
    count = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domine_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.aicloudera[count.index].private_ip]
}



resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "aicloudera.${var.domine_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.aicloudera[index(var.instances, "frontend")].private_ip]
}