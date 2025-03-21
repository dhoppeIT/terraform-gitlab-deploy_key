output "deploy_key_id" {
  description = "The ID of the project deploy key"
  value       = module.gitlab_deploy_key.deploy_key_id
}

output "id" {
  description = "The ID of this resource"
  value       = module.gitlab_deploy_key.id
}
