variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "subnet_cidr" {
  type    = string
  default = "10.2.0.0/16"
}