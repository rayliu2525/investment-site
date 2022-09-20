terraform {
  required_providers {
    aws       = {
      source  = "hashicorp/aws"
      version = "4.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

data "aws_route53_zone" "investments" {
  name         = "11xinvestments.com"
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.investments.zone_id
  name    = "11xinvestments.com"
  type    = "A"

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = true
  }
}