##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
## -- Built In Policies

data "aws_iam_policy" "apig_admin" {
  name = "AmazonAPIGatewayAdministrator"
}

data "aws_iam_policy" "cognito_power_user" {
  name = "AmazonCognitoPowerUser"
}

data "aws_iam_policy" "ec2_full" {
  name = "AmazonEC2FullAccess"
}

data "aws_iam_policy" "rds_full" {
  name = "AmazonRDSFullAccess"
}

data "aws_iam_policy" "vpc_full" {
  name = "AmazonVPCFullAccess"
}

data "aws_iam_policy" "acm_full" {
  name = "AWSCertificateManagerFullAccess"
}

resource "aws_iam_role_policy_attachment" "tf_apig_admin" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.apig_admin.arn
}

resource "aws_iam_role_policy_attachment" "tf_cognito" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.cognito_power_user.arn
}

resource "aws_iam_role_policy_attachment" "tf_ec2_full" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.ec2_full.arn
}

resource "aws_iam_role_policy_attachment" "tf_rds_full" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.rds_full.arn
}

resource "aws_iam_role_policy_attachment" "tf_vpc_full" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.vpc_full.arn
}

resource "aws_iam_role_policy_attachment" "tf_acm_full" {
  role       = aws_iam_role.terraform_access.name
  policy_arn = data.aws_iam_policy.acm_full.arn
}
