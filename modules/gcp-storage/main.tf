resource "google_storage_bucket" "main" {
  name          = "${var.prefix}-${var.environment}-storage-${random_id.suffix.hex}"
  location      = var.location
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  labels = {
    environment = var.environment
    managedby   = "terraform"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}