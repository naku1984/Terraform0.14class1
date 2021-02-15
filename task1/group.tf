resource "aws_iam_group" "Developer" {
  name = "Developer"
}
resource "aws_iam_group" "Management" {
  name = "Management"
}
resource "aws_iam_group_membership" "Developer" {
  name = "developers-group-membership"
  users = [
    aws_iam_user.tim.name,
    aws_iam_user.ben.name,
    aws_iam_user.bob.name,
  ]
  group = aws_iam_group.Developer.name
}
resource "aws_iam_group_membership" "Management" {
  name = "developers-group-membership"
  users = [
    aws_iam_user.ben.name,
  ]
  group = aws_iam_group.Management.name
}
