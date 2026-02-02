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
  description = "Expiration date for the deploy key"
}
