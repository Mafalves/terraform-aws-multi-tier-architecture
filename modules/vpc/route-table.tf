resource "aws_route_table" "public" {
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  # tags = var.tags
}

resource "aws_route_table_association" "public" {
  for_each = var.availability_zone
  subnet_id      = aws_subnet.public[each.key].id
  route_table_id = aws_route_table.public.id
}