resource "aws_iam_group" "this" {
  name = var.group_name
}

resource "aws_iam_group_policy" "assume_roles" {
  count = length(var.assumable_role_arns) > 0 ? 1 : 0

  name  = "${var.group_name}-assume-roles"
  group = aws_iam_group.this.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      for role_arn in var.assumable_role_arns : {
        Effect   = "Allow",
        Action   = "sts:AssumeRole",
        Resource = role_arn
      }
    ]
  })
}