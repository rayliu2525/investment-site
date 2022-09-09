output "SG_id" {
  value = aws_security_group.web.id
}

output "ALB_SG_id" {
  value = aws_security_group.web_ALB.id
}