module "network" {
  source = "../../modules/network"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  allowed_web_cidr     = var.allowed_web_cidr
}

module "private_log_bucket" {
  source = "../../modules/secure_storage"

  bucket_name = var.log_bucket_name
}
