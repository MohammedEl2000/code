output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = module.database.db_instance_endpoint
}

output "endpoint" {
  description = "The connection endpoint"
  value       = module.Ec2.endpoint
}