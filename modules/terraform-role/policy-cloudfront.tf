# Cloudfront Admin Role
data "aws_iam_policy_document" "tf_cloudfront_admin" {
  version = "2012-10-17"

  statement {
    sid    = "CloudfrontAdmin"
    effect = "Allow"
    actions = [
      "cloudfront:*"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_cloudfront_admin" {
  name   = "CloudFrontAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_cloudfront_admin.json
}
