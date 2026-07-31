variable "key" {
  type        = string
  default     = null
  description = "The public SSH key body"
}

variable "project" {
  type        = string
  description = "The name or ID of the project to add the deploy key to"
}

variable "title" {
  type        = string
  description = "A title to describe the deploy key with"
}

variable "can_push" {
  type        = bool
  default     = false
  description = "Allow this deploy key to be used to push changes to the project"
}

variable "expires_at" {
  type        = string
  default     = null
  description = "Expiration date for the deploy key. Expected in RFC3339 format (e.g. 2025-03-15T08:00:00Z)"

  validation {
    condition     = var.expires_at == null || can(regex("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z$", var.expires_at))
    error_message = "The expires_at value must be in RFC3339 format (e.g. 2025-03-15T08:00:00Z)."
  }
}

variable "algorithm" {
  type        = string
  default     = null
  description = "Name of the algorithm to use when generating the private key"

  validation {
    condition     = var.algorithm == null || contains(["RSA", "ECDSA", "ED25519"], var.algorithm)
    error_message = "Valid values are RSA, ECDSA, ED25519"
  }
}

variable "ecdsa_curve" {
  type        = string
  default     = "P224"
  description = "When algorithm is ECDSA, the name of the elliptic curve to use."

  validation {
    condition     = contains(["P224", "P256", "P384", "P521"], var.ecdsa_curve)
    error_message = "Valid values are P224, P256, P384, P521"
  }
}

variable "rsa_bits" {
  type        = number
  default     = 2048
  description = "When algorithm is RSA, the size of the generated RSA key, in bits"
}
