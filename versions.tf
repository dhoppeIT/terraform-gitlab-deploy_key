terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "~> 18.0"
    }

    # tflint-ignore: terraform_unused_required_providers
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0"
}
