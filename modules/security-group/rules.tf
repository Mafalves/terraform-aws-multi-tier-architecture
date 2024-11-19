resource "aws_vpc_security_group_ingress_rule" "this" {
  for_each = {for k, v in var.ingress_rules : k => v}

  security_group_id = aws_security_group.this[each.value.sg_name].id
  cidr_ipv4         = each.value.cidr_blocks
  ip_protocol       = each.value.protocol
  from_port         = each.value.from_port
  to_port           = each.value.to_port

  tags = {
    name = "ingress-rule-${each.key}"
  }
}

resource "aws_vpc_security_group_egress_rule" "this" {
  for_each = {for k, v in var.egress_rules : k => v}

  security_group_id = aws_security_group.this[each.value.sg_name].id
  cidr_ipv4         = each.value.cidr_blocks
  ip_protocol       = each.value.protocol
  from_port         = each.value.from_port
  to_port           = each.value.to_port

  tags = {
    name = "egress-rule-${each.key}"
  }
}

