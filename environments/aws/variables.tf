variable "prefix" {
  type    = string
  default = "multi-cloud"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "key_name" {
  type        = string
  description = "Name of your existing AWS Key Pair"
}