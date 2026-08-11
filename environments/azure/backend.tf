terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "multicloudfstate3024"
    container_name       = "tfstate"
    key                  = "azure/terraform.tfstate"
  }
}