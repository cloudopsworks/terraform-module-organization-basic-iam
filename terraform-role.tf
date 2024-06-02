##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

module "tf_role" {
  source           = "./modules/terraform-role"
  trust_account_id = var.parent_account_id
  account_id       = var.account_id
  tags             = module.tags.locals.common_tags
  providers = {
    aws = aws.account
  }
}
