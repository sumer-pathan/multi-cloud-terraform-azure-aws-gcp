variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "public_subnet_prefix" {
  type    = string
  default = "10.0.1.0/24"
}

variable "private_subnet_prefix" {
  type    = string
  default = "10.0.2.0/24"
}