module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}
