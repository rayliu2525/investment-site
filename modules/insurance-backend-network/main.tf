resource "aws_vpc" "main" {
  cidr_block           = var.VPC_CIDR_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags                 = var.common_tags
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = var.public_ip

  tags                    = var.common_tags
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = var.public_ip

  tags                    = var.common_tags
}