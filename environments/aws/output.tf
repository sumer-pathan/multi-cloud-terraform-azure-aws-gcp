output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "public_sg_id" {
  value = module.network.public_sg_id
}

output "ec2_public_ip" {
  value = module.compute.public_ip
}

output "ec2_private_ip" {
  value = module.compute.private_ip
}

output "s3_bucket_name" {
  value = module.storage.bucket_name
}