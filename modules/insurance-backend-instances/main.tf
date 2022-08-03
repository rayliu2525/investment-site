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
  ami           = data.aws_ssm_parameter.ami.value
  instance_type = var.instance_type
  subnet_id = var.subnet1_id
  vpc_security_group_ids = [var.SG_id]
  user_data = templatefile("${path.module}/startup_script.tftpl", {
    s3_bucket_name = var.bucket_id
  })

  tags = var.common_tags
}

resource "aws_instance" "web2" {
  ami           = data.aws_ssm_parameter.ami.value
  instance_type = var.instance_type
  subnet_id = var.subnet2_id
  vpc_security_group_ids = [var.SG_id]
  user_data = templatefile("${path.module}/startup_script.tftpl", {
    s3_bucket_name = var.bucket_id
  })

  tags = var.common_tags
}