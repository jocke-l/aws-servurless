output "bucket" {
  value = aws_s3_bucket.state.id
}

output "dynamodb_table" {
  value = aws_dynamodb_table.lock.id
}
