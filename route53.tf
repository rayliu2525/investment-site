module "route53" {
  source      = "./modules/investment-backend-route53"
  alb_dns_name = module.load_balancers.alb_dns_name
  alb_zone_id = module.load_balancers.alb_zone_id
}