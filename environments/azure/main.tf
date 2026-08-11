resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-${var.environment}-rg"
  location = var.location

  tags = {
    Project     = "Multi-Cloud-Terraform"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

module "network" {
  source = "../../modules/network"

  prefix              = var.prefix
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

module "compute" {
  source = "../../modules/compute"

  prefix              = var.prefix
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  subnet_id           = module.network.public_subnet_id
  admin_password      = var.admin_password
}

module "storage" {
  source = "../../modules/storage"

  prefix              = var.prefix
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}
