terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.23.0"
    }
    
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}