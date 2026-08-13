output "instance_name" {
  value = google_compute_instance.main.name
}

output "instance_id" {
  value = google_compute_instance.main.instance_id
}

output "public_ip" {
  value = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}

output "private_ip" {
  value = google_compute_instance.main.network_interface[0].network_ip
}