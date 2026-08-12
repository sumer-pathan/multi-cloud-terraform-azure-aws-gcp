variable "prefix" {
  type    = string
  default = "multi-cloud"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "region" {
  type    = string
  default = "us-central1"
}