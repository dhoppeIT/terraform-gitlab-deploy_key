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
