output "public_sg_id" {
  description = "The public security group ID"
  value = aws_security_group.public.id  
}

output "private_sg_id" {
  description = "The private security group ID"
  value = aws_security_group.private.id  
}

output "data_sg_id" {
  description = "The data security group ID"
  value = aws_security_group.data.id
}