module "network" {
  source = "../../modules/aws-network"

  prefix      = var.prefix
  environment = var.environment
}

module "compute" {
  source = "../../modules/aws-compute"

  prefix      = var.prefix
  environment = var.environment
  subnet_id   = module.network.public_subnet_id
  sg_id       = module.network.public_sg_id
  key_name    = var.key_name
}

module "storage" {
  source = "../../modules/aws-storage"

  prefix      = var.prefix
  environment = var.environment
}