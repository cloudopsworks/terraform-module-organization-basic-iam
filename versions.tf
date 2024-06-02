terraform {
  required_version = ">= 1.3"
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

provider "aws" {
  alias = "parent"
}

provider "aws" {
  alias = "account"
}