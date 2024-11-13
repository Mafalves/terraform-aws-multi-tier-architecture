output "vpc_id" {
  description = "The VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "The public subnet ID"
  value = {
    for k, v in aws_subnet.public : k => v.id
  }
  # value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "The private subnet ID"
  value = {
    for k, v in aws_subnet.private : k => v.id
  }
  # value       = aws_subnet.private.id
}

output "aws_route_table" {
  description = "The public route table ID"
  value       = aws_route_table.public.id
}

output "aws_internet_gateway" {
  description = "The tnternet gateway ID"
  value       = aws_internet_gateway.this.id
}


