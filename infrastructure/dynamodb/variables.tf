variable "table_name" {
  default = "movies_data"
}

variable "billing_mode" {
  default = "PAY_PER_REQUEST"
}

variable "hash_key_name" {
  default = "id"
}

variable "hash_key_type" {
  default = "S"
}

variable "dynamodb_tags" {
  default = {
    Name        = "media_data_table"
    Environment = "dev"
  }
}