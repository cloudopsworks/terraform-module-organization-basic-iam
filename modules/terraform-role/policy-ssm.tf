# SSM Parameter Store reader/writer policy
data "aws_iam_policy_document" "tf_ssm_store" {
  version = "2012-10-17"

  statement {
    sid    = "SSMParameterActions"
    effect = "Allow"
    actions = [
      "ssm:PutParameter",
      "ssm:DeleteParameter",
      "ssm:RemoveTagsFromResource",
      "ssm:GetParameterHistory",
      "ssm:AddTagsToResource",
      "ssm:ListTagsForResource",
      "ssm:GetParametersByPath",
      "ssm:GetParameters",
      "ssm:GetParameter",
      "ssm:DeleteParameters"
    ]
    resources = [
      "arn:aws:ssm:*:${var.account_id}:parameter/*", # Account Parameters
      "arn:aws:ssm:*::parameter/" # Global parameters
    ]
  }

  statement {
    sid    = "SSMAllowDescribe"
    effect = "Allow"
    actions = [
      "ssm:DescribeParameters"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_ssm_store" {
  name   = "SSMParameterStoreWriter"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_ssm_store.json
}
