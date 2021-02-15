resource "aws_key_pair" "key111" {
  key_name   = "key-for-ohio"
  public_key = file("~/.ssh/id_rsa.pub")
  provider   = aws.east
}
resource "aws_key_pair" "key222" {
  key_name   = "key-for-oregon"
  public_key = file("~/.ssh/id_rsa.pub")
  provider   = aws.west
}