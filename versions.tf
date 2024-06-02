terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws.default,
        aws.account
      ]
    }
  }
}

# uncomment for validate
# provider "aws" {
#   alias = "default"
# }
#
# provider "aws" {
#   alias = "account"
# }