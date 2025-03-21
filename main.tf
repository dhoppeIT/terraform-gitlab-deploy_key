resource "gitlab_deploy_key" "this" {
  key     = var.key != null ? var.key : one(tls_private_key.this[*].public_key_openssh)
  project = var.project
  title   = var.title

  can_push = var.can_push
}

resource "tls_private_key" "this" {
  count = var.key == null ? 1 : 0

  algorithm   = "ECDSA"
  ecdsa_curve = "P256"
}
