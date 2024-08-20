# EKS Admin Policy
data "aws_iam_policy_document" "tf_ecr_admin" {
  version = "2012-10-17"
  statement {
    sid    = "ECRAccess"
    effect = "Allow"
    actions = [
      "ecr:GetRegistryPolicy",
      "ecr:DescribeRegistry",
      "ecr:DescribePullThroughCacheRules",
      "ecr:DescribeRepositoryCreationTemplates",
      "ecr:GetAuthorizationToken",
      "ecr:UpdateRepositoryCreationTemplate",
      "ecr:PutRegistryScanningConfiguration",
      "ecr:CreatePullThroughCacheRule",
      "ecr:DeletePullThroughCacheRule",
      "ecr:PutRegistryPolicy",
      "ecr:GetRegistryScanningConfiguration",
      "ecr:ValidatePullThroughCacheRule",
      "ecr:CreateRepositoryCreationTemplate",
      "ecr:BatchImportUpstreamImage",
      "ecr:DeleteRepositoryCreationTemplate",
      "ecr:DeleteRegistryPolicy",
      "ecr:UpdatePullThroughCacheRule",
      "ecr:PutReplicationConfiguration",
    ]
    resources = ["*"]
  }

  statement {
    sid     = "EKSComponents"
    effect  = "Allow"
    actions = ["ecr:*"]
    resources = [
      "arn:aws:ecr:*:${var.account_id}:repository/*",
    ]
  }
}

resource "aws_iam_role_policy" "terraform_access_ecr_admin" {
  name   = "ECRAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_ecr_admin.json
}
