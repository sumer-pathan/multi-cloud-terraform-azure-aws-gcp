output "network_name" {
  value = module.network.network_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "vm_public_ip" {
  value = module.compute.public_ip
}

output "vm_private_ip" {
  value = module.compute.private_ip
}

output "bucket_name" {
  value = module.storage.bucket_name
}