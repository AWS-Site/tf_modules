resource "aws_iam_role" "this" {
    name = var.name
    assume_role_policy = var.assume_role_policy
    tags = var.tags

}

resource "aws_iam_policy" "this" {
  for_each    = var.policies

  name        = "${var.name}-${each.key}-policy"
  description = each.value.description
  policy      = each.value.json
  tags        = var.tags
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each   = var.policies

  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this[each.key].arn
}
