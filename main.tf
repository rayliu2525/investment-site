terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.23.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./modules/insurance-backend-network"
}

module "s3" {
  source = "./modules/insurance-backend-s3"
}