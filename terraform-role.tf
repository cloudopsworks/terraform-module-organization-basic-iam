##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

module "tf_role" {
  source           = "./modules/terraform-role"
  trust_account_id = var.parent_account_id
  account_id       = var.account_id
}

# IAM group access
data "aws_iam_policy_document" "tf_policy_doc" {
  version = "2012-10-17"

  statement {
    sid    = "AllowSTS"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    resources = [
      module.tf_role.role_arn
    ]
  }
}

resource "aws_iam_group_policy" "tf_group_policy" {
  name   = "Terraform-Access-STS"
  group  = data.aws_iam_group.terraform.group_name
  policy = data.aws_iam_policy_document.tf_policy_doc.json
}
