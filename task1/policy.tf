resource "aws_iam_group_policy" "policy" {
  name  = "power-access-policy"
  group = aws_iam_group.Infosec.name
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "NotAction": [
                "iam:*",
                "organizations:*",
                "account:*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "iam:DeleteServiceLinkedRole",
                "iam:ListRoles",
                "organizations:DescribeOrganization",
                "account:ListRegions"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
resource "aws_iam_group" "Infosec" {
  name = "Infosec"
}
resource "aws_iam_group_membership" "Infosec" {
  name = "developers-group-membership"
  users = [
    aws_iam_user.Ron.name,
    aws_iam_user.Sam.name,
    aws_iam_user.Billy.name,
  ]
  group = aws_iam_group.Infosec.name
}






