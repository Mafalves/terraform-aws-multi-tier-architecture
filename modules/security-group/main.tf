resource "aws_security_group" "this" {
  name = var.security_group
  vpc_id = var.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  security_group_id = aws_security_group.this.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = var.ip_protocol
  from_port         = var.port_destination
  to_port           = var.port_destination
}
