module "instances" {
  source      = "./modules/investment-backend-instances"
  common_tags = local.common_tags
  subnet1_id = module.network.subnet1_id
  subnet2_id = module.network.subnet2_id
  SG_id = module.SG.SG_id
  bucket_id = module.s3.bucket_id
  instance_profile_name = module.s3.instance_profile_name
  role_policy = module.s3.role_policy
}