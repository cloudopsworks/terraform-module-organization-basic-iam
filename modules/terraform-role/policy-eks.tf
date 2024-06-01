# EKS Admin Policy
data "aws_iam_policy_document" "tf_eks_admin" {
  version = "2012-10-17"
  statement {
    sid    = "EKSCreate"
    effect = "Allow"
    actions = [
      "eks:DescribeAddonConfiguration",
      "eks:ListClusters",
      "eks:DescribeAddonVersions",
      "eks:RegisterCluster",
      "eks:CreateCluster"
    ]
    resources = ["*"]
  }

  statement {
    sid     = "EKSComponents"
    effect  = "Allow"
    actions = ["eks:*"]
    resources = [
      "arn:aws:eks:*:${var.account_id}:addon/*/*/*",
      "arn:aws:eks:*:${var.account_id}:fargateprofile/*/*/*",
      "arn:aws:eks:*:${var.account_id}:cluster/*",
      "arn:aws:eks:*:${var.account_id}:identityproviderconfig/*/*/*/*",
      "arn:aws:eks:*:${var.account_id}:nodegroup/*/*/*",
      "arn:aws:eks:*:${var.account_id}:access-entry/*"
    ]
  }
}

resource "aws_iam_role_policy" "terraform_access_eks_admin" {
  name   = "EKSAdmin"
  role   = aws_iam_role.terraform_access.name
  policy = data.aws_iam_policy_document.tf_eks_admin.json
}
