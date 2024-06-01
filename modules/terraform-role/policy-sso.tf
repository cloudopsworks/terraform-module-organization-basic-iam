# SSO Admin Policy

data "aws_iam_policy_document" "tf_sso_admin" {
  version = "2012-10-17"

  statement {
    sid    = "SSOAdmin"
    effect = "Allow"
    actions = [
      "sso:*",
      "sso-directory:*",
      "identitystore:*"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_sso_admin" {
  name   = "SSOAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_sso_admin.json
}
