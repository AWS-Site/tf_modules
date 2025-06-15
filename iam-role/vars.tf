variable "name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "The assume role policy document (trust relationship)"
  type        = string
}

variable "policies" {
  description = "A map of policy names to policy documents"
  type        = map(object({
    description = string
    json        = string
  }))
  default     = {}
}


variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}
