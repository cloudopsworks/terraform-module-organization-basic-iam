##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
module "account_policy" {
  providers = {
    aws = aws.account
  }
  source = "./modules/account-policy"
  strict = true
}
