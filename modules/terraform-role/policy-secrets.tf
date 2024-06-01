# Secrets Manager Reader Policy
data "aws_iam_policy_document" "tf_secrets_reader" {
  version = "2012-10-17"

  statement {
    sid    = "SecretsManagerRead"
    effect = "Allow"
    actions = [
      "secretsmanager:GetResourcePolicy",
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:ListSecretVersionIds"
    ]
    resources = [
      "arn:aws:secretsmanager:*:${var.account_id}:secret:*"
    ]
  }

  statement {
    sid    = "SecretsManagerList"
    effect = "Allow"
    actions = [
      "secretsmanager:GetRandomPassword",
      "secretsmanager:ListSecrets"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role_policy" "terraform_access_secrets_reader" {
  name   = "SecretsReader"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_secrets_reader.json
}
