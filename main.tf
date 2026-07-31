resource "gitlab_deploy_key" "this" {
  key     = var.key != null ? var.key : one(tls_private_key.this[*].public_key_openssh)
  project = var.project
  title   = var.title

  can_push   = var.can_push
  expires_at = var.expires_at
}

resource "tls_private_key" "this" {
  count = var.key == null ? 1 : 0

  algorithm   = var.algorithm
  ecdsa_curve = var.ecdsa_curve
  rsa_bits    = var.rsa_bits
}
