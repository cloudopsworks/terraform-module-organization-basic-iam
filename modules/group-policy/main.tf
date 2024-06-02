##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
#
# IAM group access
data "aws_iam_group" "allow_group" {
  group_name = var.allowsts_group
}

data "aws_iam_policy_document" "tf_policy_doc" {
  version = "2012-10-17"

  statement {
    sid    = "AllowSTS"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    resources = [
      var.role_arn
    ]
  }
}

resource "aws_iam_group_policy" "tf_group_policy" {
  name     = "TF-Access-STS-${var.tags.organization_unit}-${var.tags.environment_name}"
  group    = data.aws_iam_group.allow_group.group_name
  policy   = data.aws_iam_policy_document.tf_policy_doc.json
}
