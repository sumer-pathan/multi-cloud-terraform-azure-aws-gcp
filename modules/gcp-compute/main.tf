resource "google_compute_instance" "main" {
  name         = "${var.prefix}-${var.environment}-vm"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 10          # Smallest practical size
      type  = "pd-standard"
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork

    access_config {
      // Ephemeral public IP
    }
  }

  tags = ["ssh"]

  metadata = {
    enable-oslogin = "TRUE"
  }

  labels = {
    environment = var.environment
    managedby   = "terraform"
  }
}