terraform {
  backend "s3" {
    bucket         = "multi-cloud-tfstate-35703"      
    key            = "aws/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "multi-cloud-tfstate-lock"
    encrypt        = true
  }
}