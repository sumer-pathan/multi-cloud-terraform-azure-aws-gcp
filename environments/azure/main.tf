# Temporary resource group so you can see something working today

resource "azurerm_resource_group" "main" {
    name = "${var.prefix}-${var.environment}-rg"
    location = var.location

    tags = {
        Project = "Multi-Cloud-Terraform"
        environment = var.environment
        ManagedBy = "Terraform"
        
    }
  
}