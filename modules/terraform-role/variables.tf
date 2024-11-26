##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
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