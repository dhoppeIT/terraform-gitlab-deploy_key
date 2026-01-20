output "deploy_key_id" {
  description = "The ID of the project deploy key"
  value       = gitlab_deploy_key.this.deploy_key_id
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_deploy_key.this.id
}

output "private_key_openssh" {
  description = "Private key data in OpenSSH format"
  value       = one(tls_private_key.this[*].private_key_openssh)
  sensitive   = true
}
