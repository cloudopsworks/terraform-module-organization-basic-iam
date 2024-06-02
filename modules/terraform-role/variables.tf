variable "tags" {
  type    = map(string)
  default = {}
}

variable "account_id" {
  type = string
}

variable "trust_account_id" {
  type = string
}

variable "is_org" {
  type    = bool
  default = false
}

variable "organization_id" {
  type = string
  default = ""
  validation {
    condition = var.is_org
    error_message = "Organization ID is required when is_org is set to true"}
}