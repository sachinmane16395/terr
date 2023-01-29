resource "aws_iam_user" "hello" {
    name = var.username
    
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.hello.name
  policy_arn = var.policy
}