variable "location" {
    description = "Azure region"
    type = string
    default = "eastus"
}

variable "prefix" {
  description = "Resources name prefix"
  type = string
  default = "multi-cloud"       
}

variable "environment" {
  description = "Environment name"
  type = string
  default = "dev"
}