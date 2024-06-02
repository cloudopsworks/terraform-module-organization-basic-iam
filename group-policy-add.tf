##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
# IAM group access
module "allow_group" {
  source         = "./modules/group-policy"
  allowsts_group = var.allowsts_group
  role_arn       = module.tf_role.role_arn
  tags           = var.tags
  providers = {
    aws = aws.default
  }
}
