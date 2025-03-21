output "deploy_key_id" {
  description = "The ID of the project deploy key"
  value       = gitlab_deploy_key.this.deploy_key_id
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_deploy_key.this.id
}
