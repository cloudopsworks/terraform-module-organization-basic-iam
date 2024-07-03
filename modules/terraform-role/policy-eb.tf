# Elastic Beanstalk Admin
resource "aws_iam_policy_attachment" "beanstalk_admin" {
  name       = "AWSElasticBeanstalkAdmin"
  roles      = [aws_iam_role.terraform_access.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess-AWSElasticBeanstalk"
}