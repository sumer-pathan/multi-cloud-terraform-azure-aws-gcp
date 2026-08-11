resource "azurerm_storage_account" "main" {
  name = "${replace(var.prefix, "-", "")}${var.environment}st01"   # must be globally unique & lowercase
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"          # Cheapest option
  account_kind             = "StorageV2"
  min_tls_version          = "TLS1_2"

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_storage_container" "main" {
  name                  = "data"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}