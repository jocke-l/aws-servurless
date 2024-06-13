resource "aws_dynamodb_table" "lock" {
  name = "__ENV__-terraform-lock"

  read_capacity  = 1
  write_capacity = 1

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
