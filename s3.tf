module "s3" {
  source = "./modules/insurance-backend-s3"
  common_tags = local.common_tags
  bucket_name = local.s3_bucket_name
}