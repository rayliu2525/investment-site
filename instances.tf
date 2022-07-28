module "instances" {
  source      = "./modules/insurance-backend-instances"
  common_tags = local.common_tags
  subnet1_id = module.network.subnet1_id
  subnet2_id = module.network.subnet2_id
  SG_id = module.SG.SG_id
}