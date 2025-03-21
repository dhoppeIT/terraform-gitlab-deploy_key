# terraform-gitlab-deploy_key

Terraform module to manage the following Twingate resources:

* gitlab_deploy_key

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_deploy_key" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-deploy-key/local"
  version = "1.0.0"

  project = "example-group-48165/example-project"
  title   = "Example (deploy key)"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_deploy_key.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/deploy_key) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_can_push"></a> [can\_push](#input\_can\_push) | Allow this deploy key to be used to push changes to the project | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | The public SSH key body | `string` | `null` | no |
| <a name="input_project"></a> [project](#input\_project) | The name or ID of the project to add the deploy key to | `string` | n/a | yes |
| <a name="input_title"></a> [title](#input\_title) | A title to describe the deploy key with | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_key_id"></a> [deploy\_key\_id](#output\_deploy\_key\_id) | The ID of the project deploy key |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
