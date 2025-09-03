resource "aws_dynamodb_table" "terraform_locks" {
  name         = "T-${var.bucket_name}-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
