resource "aws_subnet" "public" {
  for_each = var.availability_zone
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_cidr[each.key]
  availability_zone       = each.value
  map_public_ip_on_launch = true # I don't remember if the ec2 instances will be publicly exposed or just the IGTW. 
  # tags                    = merge(var.tags, { "Name" = "Public Subnet ${count.index + 1}" })
}

resource "aws_subnet" "private" {
  for_each = var.availability_zone
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_cidr[each.key]
  availability_zone = each.value
  # tags              = merge(var.tags, { "Name" = "Private Subnet ${count.index + 1}" })
}