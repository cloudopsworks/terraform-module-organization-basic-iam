terraform {
  required_version = ">= 1.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      configuration_aliases = [
        aws.parent,
        aws.account
      ]
    }
  }
}
