variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "prefix" {
  description = "Resource name prefix"
  type        = string
  default     = "multi-cloud"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "admin_password" {
  description = "Password for the VM admin user"
  type        = string
  sensitive   = true
}