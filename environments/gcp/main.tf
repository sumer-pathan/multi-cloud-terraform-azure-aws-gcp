module "network" {
  source = "../../modules/gcp-network"

  prefix      = var.prefix
  environment = var.environment
  region      = var.region
}

module "compute" {
  source = "../../modules/gcp-compute"

  prefix      = var.prefix
  environment = var.environment
  region      = var.region
  network     = module.network.network_name
  subnetwork  = module.network.subnet_name
}

module "storage" {
  source = "../../modules/gcp-storage"

  prefix      = var.prefix
  environment = var.environment
}