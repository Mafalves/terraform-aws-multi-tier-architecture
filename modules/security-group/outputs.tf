# output "security_group_id" {
#   description = "The public security group ID"
#   value       = aws_security_group.public.id
# }


output "public_subnet_id" {
  description = "The public security group ID"
  value = {
    for k, v in aws_security_group.this : k => v.id
  }
}
