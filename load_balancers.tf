module "load_balancers" {
  source      = "./modules/investment-backend-lb"
  common_tags = local.common_tags
  ALB_SG_id   = module.SG.ALB_SG_id
  subnet1_id  = module.network.subnet1_id
  subnet2_id  = module.network.subnet2_id
  VPC_id      = module.network.VPC.id
  web1_id     = module.instances.web1_id
  web2_id     = module.instances.web2_id
} 