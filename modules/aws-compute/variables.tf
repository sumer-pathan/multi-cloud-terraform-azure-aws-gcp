variable "prefix" {
  type = string
}

variable "environment" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "sg_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"   # Free tier eligible
}

variable "key_name" {
  type        = string
  description = "Name of existing AWS Key Pair"
}