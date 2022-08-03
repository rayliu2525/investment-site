module "route53" {
  source      = "./modules/insurance-backend-route53"
  common_tags = local.common_tags
}