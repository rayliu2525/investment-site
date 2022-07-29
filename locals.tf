resource "random_integer" "rand" {
  min = 1000
  max = 9999
}

locals {
  common_tags = {
    Company = var.company
    Project   = var.project
    Environment = var.environment
  }
  s3_bucket_name = "gg-programming-${random_integer.rand.result}"
}