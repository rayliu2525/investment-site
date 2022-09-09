output "alb_dns_name" {
  value = aws_lb.web_ALB.dns_name
}

output "alb_zone_id" {
  value = aws_lb.web_ALB.zone_id
}