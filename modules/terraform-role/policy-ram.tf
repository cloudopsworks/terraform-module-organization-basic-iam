# RAM policy access
data "aws_iam_policy_document" "tf_ram_policy_admin" {
  version = "2012-10-17"

  statement {
    sid    = "RAMAdminRole"
    effect = "Allow"
    actions = [
      "ram:*"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_ram_admin" {
  name   = "RAMAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_ram_policy_admin.json
}
