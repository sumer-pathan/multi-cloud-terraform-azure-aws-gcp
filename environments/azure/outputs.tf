output "vm_public_ip" {
  value = module.compute.public_ip
}

output "vm_private_ip" {
  value = module.compute.private_ip
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "primary_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}