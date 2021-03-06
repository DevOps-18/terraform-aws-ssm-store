variable "tags" {
  type    = map
  default = {}
}

variable "kms_alias" {
  description = "kms_alias sets the kms alias used for SecureString"
  type        = string
  default     = "alias/aws/ssm"
}

variable "name_prefix" {
  description = "name_prefix prefixes the given name with a prefix"
  type        = string
  default     = ""
}

variable "overwrite" {
  description = "overwrite defines if we overwrite existing params"
  type        = bool
  default     = true
}

variable "parameters" {
  description = "A list of dicts with parameter information"
  type = list(object({
    name  = string # Name of the policy
    type  = string # Defaults to 'var.policy_path' variable if empty
    value = string # Defaults to 'var.policy_desc' variable if empty
  }))
  default = []
}
