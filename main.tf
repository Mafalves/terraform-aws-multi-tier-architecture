module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

module "security-group" {
  source         = "./modules/security-group"
  security_group = var.security_group
  vpc_id         = module.vpc.vpc_id
  ingress_rules  = var.ingress_rules
  egress_rules   = var.egress_rules
}

module "data" {
  source       = "./modules/data"
  table_name   = var.table_name
  hash_key     = var.hash_key
  billing_mode = var.billing_mode
  attributes   = var.attributes
  range_key    = var.range_key
}