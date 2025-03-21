module "gitlab_deploy_key" {
  source = "../../"

  project = "example-group-48165/example-project"
  title   = "Example (deploy key)"
}
