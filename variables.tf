##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

variable "org" {
  type = object({
    organization_name = string
    organization_unit = string
    environment_type  = string
    environment_name  = string
  })
}

variable "account_id" {
  type = string
}

variable "parent_account_id" {
  type    = string
  default = ""
}

variable "extra_tags" {
  type    = map(string)
  default = {}
}

variable "is_org" {
  type    = bool
  default = false
}

variable "organization_id" {
  type    = string
  default = ""
}

variable "secrets_manager" {
  type    = bool
  default = false
}

variable "trust_accounts_arns" {
  type    = list(string)
  default = []
}