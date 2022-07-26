module "network" {
  source      = "./modules/insurance-backend-network"
  common_tags = local.common_tags
}