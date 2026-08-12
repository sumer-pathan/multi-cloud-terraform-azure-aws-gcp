terraform {
  backend "gcs" {
    bucket = "multi-cloud-tfstate-41856"     # ← replace
    prefix = "gcp/terraform.tfstate"
  }
}