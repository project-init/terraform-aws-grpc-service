resource "aws_route53_record" "domain" {
  name = local.service_domain
  type = "A"

  alias {
    name                   = var.lb_dns_name
    zone_id                = var.lb_zone_id
    evaluate_target_health = true
  }

  zone_id = var.hosted_zone_id
}
