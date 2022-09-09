module "network" {
  source      = "./modules/investment-backend-network"
  common_tags = local.common_tags
}