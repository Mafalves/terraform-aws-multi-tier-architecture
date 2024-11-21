output "table_arn" {
  description = "ARN of the table"
  value = aws_dynamodb_table.this.arn
}

output "table_id" {
  description = "ID of the table"
  value = aws_dynamodb_table.this.id 
}