resource "aws_security_group" "this" {
  for_each = var.security_group

  name     = each.value.name
  description = each.value.description
  vpc_id   = var.vpc_id
}