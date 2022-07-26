resource "aws_vpc" "main" {
  cidr_block = var.VPC_CIDR_block
  enable_dns_hostnames = var.enable_dns_hostnames
}