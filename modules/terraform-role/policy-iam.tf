# IAM Full Access Policy
data "aws_iam_policy_document" "tf_iam_full" {
  version = "2012-10-17"

  statement {
    sid       = "IAMFullAccess"
    effect    = "Allow"
    actions   = ["iam:*"]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_iam_full" {
  name   = "IAMFullAccess"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_iam_full.json
}
