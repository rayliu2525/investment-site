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

data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

##################################################################################
# INSTANCES
##################################################################################

resource "aws_instance" "web1" {
  ami           = "ami-0242242da638d853c"
  subnet_id = var.subnet1_id
  vpc_security_group_ids = [var.SG_id]
  instance_type = "t3a.small"
  tags = var.common_tags
}

resource "aws_instance" "web2" {
  ami           = "ami-0242242da638d853c"
  subnet_id = var.subnet2_id
  vpc_security_group_ids = [var.SG_id]
  instance_type = "t3a.small"
  tags = var.common_tags
}