module "SG" {
  source      = "./modules/investment-backend-SG"
  VPC_id      = module.network.VPC
  common_tags = local.common_tags
}