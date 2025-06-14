variable "group_name" {
  type = string
}

variable "assumable_role_arns" {
  type        = list(string)
  description = "List of role ARNs this group should be allowed to assume"
  default     = []
}

variable "account_number" {
    type=string
    description="The account number we're working in."
}

variable "env"{
    type=string
}