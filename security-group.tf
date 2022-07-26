module "SG" {
  source      = "./modules/insurance-backend-SG"
  VPC_id      = module.network.VPC
  common_tags = local.common_tags
}