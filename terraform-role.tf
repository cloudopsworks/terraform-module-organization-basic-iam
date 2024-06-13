##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
locals {
  all_tags = merge(
    var.extra_tags,
    module.tags.locals.common_tags
  )
}
module "tf_role" {
  source           = "./modules/terraform-role"
  is_org           = var.is_org
  trust_account_id = var.parent_account_id
  account_id       = var.account_id
  tags             = local.all_tags
  providers = {
    aws = aws.account
  }
}
