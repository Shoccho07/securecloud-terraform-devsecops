output "vpc_id" {
  description = "VPC ID from the network module"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs from the network module"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs from the network module"
  value       = module.network.private_subnet_ids
}

output "web_security_group_id" {
  description = "Web security group ID from the network module"
  value       = module.network.web_security_group_id
}

output "log_bucket_name" {
  description = "Logging bucket name from the storage module"
  value       = module.private_log_bucket.bucket_name
}
