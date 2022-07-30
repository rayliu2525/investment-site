module "s3" {
  source = "./modules/insurance-backend-s3"
  common_tags = local.common_tags
  bucket_name = local.s3_bucket_name
}

resource "aws_s3_object" "object" {
  bucket = module.s3.bucket_id
  key    = "/website/index.html"
  source = "./website/index.html"
}