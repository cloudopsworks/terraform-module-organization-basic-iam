# SES Admin Policy
data "aws_iam_policy_document" "tf_ses_admin" {
  version = "2012-10-17"
  statement {
    sid = "AllowRead"
    actions = [
      "ses:List*",
      "ses:Get*",
      "ses:Create*",
      "ses:Describe*",
      "ses:Delete*",
      "ses:Update*",
      "ses:Set*",
      "ses:Verify*"
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_role_policy" "terraform_access_ses_admin" {
  name   = "SESAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_ses_admin.json
}

