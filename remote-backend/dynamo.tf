resource "aws_dynamodb_table" "aws-dynamodb-table" {
  name             = "T-${var.bucket_name}-table"
  hash_key         = "T-${var.hash-key}-Key"
  billing_mode     = "ON_DEMAND"

  attribute {
    name = "T-${var.hash-key}-key"
    type = "S"
  }
}