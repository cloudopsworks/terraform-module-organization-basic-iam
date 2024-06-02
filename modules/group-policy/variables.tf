##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
variable "tags" {
  type    = map(string)
  default = {}
}

variable "allowsts_group" {
  type = string
}

variable "role_arn" {
  type = string
}