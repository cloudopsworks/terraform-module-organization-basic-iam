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