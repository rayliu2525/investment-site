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


##################################################################################
# DATA
##################################################################################

data "aws_elb_service_account" "main" {}

##################################################################################
# RESOURCES
##################################################################################

resource "aws_lb" "web_ALB" {
  name               = "GG-Programming-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.ALB_SG_id]
  subnets            = [var.subnet1_id, var.subnet2_id]

  enable_deletion_protection = false

  tags = var.common_tags
}

resource "aws_lb_target_group" "web" {
  name     = "alb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.VPC_id

  tags     = var.common_tags
}

resource "aws_lb_listener" "web" {
  load_balancer_arn = aws_lb.web_ALB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn
  }

  tags = var.common_tags
}

resource "aws_lb_target_group_attachment" "web1" {
  target_group_arn = aws_lb_target_group.web.arn
  target_id        = var.web1_id
  port             = 80
}

resource "aws_lb_target_group_attachment" "web2" {
  target_group_arn = aws_lb_target_group.web.arn
  target_id        = var.web2_id
  port             = 80
}