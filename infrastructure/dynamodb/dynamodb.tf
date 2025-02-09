resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = var.billing_mode

  attribute {
    name = var.hash_key_name
    type = var.hash_key_type
  }

  hash_key = var.hash_key_name

  tags = var.dynamodb_tags
}
