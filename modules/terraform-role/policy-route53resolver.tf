data "aws_iam_policy_document" "tf_route53_resolver_admin" {
  version = "2012-10-17"

  statement {
    sid    = "Route53ResolverAll"
    effect = "Allow"
    actions = [
      "route53resolver:*"
    ]
    resources = ["*"]
  }
}
resource "aws_iam_role_policy" "terraform_access_route53resolver_admin" {
  name   = "Route53ResolverAdminAccess"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_route53_resolver_admin.json
}
