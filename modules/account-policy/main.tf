##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
resource "aws_iam_account_password_policy" "account_policy" {
  minimum_password_length        = var.strict ? 25 : 8
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  require_uppercase_characters   = true
  allow_users_to_change_password = true
  max_password_age               = var.strict ? 90 : 0
  password_reuse_prevention      = var.strict ? 24 : null
  hard_expiry                    = false
}